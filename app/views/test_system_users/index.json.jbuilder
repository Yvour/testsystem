json.array!(@test_system_users) do |test_system_user|
  json.extract! test_system_user, :id, :login, :firstname, :middlename, :lastname
  json.url test_system_user_url(test_system_user, format: :json)
end
