json.extract! userread, :id, :comic_id, :user_id, :vol, :created_at, :updated_at
json.url userread_url(userread, format: :json)
