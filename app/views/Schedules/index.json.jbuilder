json.array!(@schedules) do |schedule|
  json.extract! schedule, :id, :meeting, :teacher_id
  json.url schedule_url(schedule, format: :json)
end
