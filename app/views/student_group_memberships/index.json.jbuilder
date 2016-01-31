json.array!(@student_group_memberships) do |student_group_membership|
  json.extract! student_group_membership, :id, :Student, :StudentGroup
  json.url student_group_membership_url(student_group_membership, format: :json)
end
