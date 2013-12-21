json.array!(@movies) do |movie|
  json.extract! movie, :id, :name, :year, :studio, :rating
  json.url movie_url(movie, format: :json)
end
