json.array!(@students) do |student|
  json.extract! student, :id, :login, :firstname, :middlename, :lastname, :email
  json.url student_url(student, format: :json)
end
