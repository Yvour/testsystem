json.array!(@course_groups) do |course_group|
  json.extract! course_group, :id, :course_id, :group_id, :coursename
  json.url course_group_url(course_group, format: :json)
end
