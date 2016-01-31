json.array!(@teachers) do |teacher|
  json.extract! teacher, :id, :login, :firstname, :middlename, :lastname, :email
  json.url teacher_url(teacher, format: :json)
end
