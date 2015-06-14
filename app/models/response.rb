class Response < ActiveRecord::Base
	belongs_to :article
	after_create :update_article

	def update_article
		unless self.email == 'sage'
			self.article.updated_at = Time.now
			self.article.save
		end
	end 
end
