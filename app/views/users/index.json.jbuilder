json.array!(@users) do |user|
  json.extract! user, :id, :name, :phone_num
  json.url user_url(user, format: :json)
end
