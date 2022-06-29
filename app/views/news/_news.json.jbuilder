json.extract! news, :id, :title, :content, :author, :created_at, :updated_at
json.url news_url(news, format: :json)
