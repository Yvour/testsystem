json.array!(@courses) do |course|
  json.extract! course, :id, :discipline_id, :teacher_id, :coursename
  json.url course_url(course, format: :json)
end
