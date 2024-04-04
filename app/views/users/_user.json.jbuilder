json.extract! user, :id, :name, :attendance, :generation, :note, :created_at, :updated_at
json.url user_url(user, format: :json)
