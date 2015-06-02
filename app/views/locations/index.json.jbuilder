json.array!(@locations) do |location|
  json.extract! location, :id, :place, :description
  json.url location_url(location, format: :json)
end
