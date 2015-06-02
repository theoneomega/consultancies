json.array!(@meetings) do |meeting|
  json.extract! meeting, :id, :assignature_id, :comments, :location_id, :schedule_id
  json.url meeting_url(meeting, format: :json)
end
