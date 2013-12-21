json.array!(@roles) do |role|
  json.extract! role, :id, :name, :movie_id
  json.url role_url(role, format: :json)
end
