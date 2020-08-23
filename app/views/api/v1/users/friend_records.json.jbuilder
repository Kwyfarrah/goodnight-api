json.extract! @user, :id, :name
json.friends @user.friends do |friend|
  json.extract! friend, :id, :name
    json.sleep_record friend.sleep_record do |record|
    json.extract! record, :clockin_time, :clockout_time
  end
end

