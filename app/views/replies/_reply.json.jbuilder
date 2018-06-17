json.extract! reply, :id, :description, :created_at, :updated_at
json.url reply_url(reply, format: :json)
