json.array!(@duties) do |duty|
  json.extract! duty, :id, :Discipline_id, :Teacher_id
  json.url duty_url(duty, format: :json)
end
