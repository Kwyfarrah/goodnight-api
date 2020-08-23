json.array! @friendships do |friendship|
  json.extract! friendship, :friend_id, :user_id
end
