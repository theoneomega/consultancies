json.array!(@assignatures) do |assignature|
  json.extract! assignature, :id, :name
  json.url assignature_url(assignature, format: :json)
end
