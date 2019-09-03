json.extract! user, :id, :First_Name, :Second_Name, :Email, :created_at, :updated_at
json.url user_url(user, format: :json)
