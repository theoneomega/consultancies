json.array!(@students) do |student|
  json.extract! student, :id, :first_name, :last_name, :last_name2, :email, :phone
  json.url student_url(student, format: :json)
end
