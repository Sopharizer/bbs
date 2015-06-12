json.array!(@articles) do |article|
  json.extract! article, :id, :title, :name, :email, :content
  json.url article_url(article, format: :json)
end
