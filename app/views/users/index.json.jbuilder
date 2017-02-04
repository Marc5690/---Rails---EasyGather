json.array!(@users) do |user|
  json.extract! user, :id, :fname, :lname, :email, :password, :profile_image, :profile_text, :gather_points, :privacy
  json.url user_url(user, format: :json)
end
