json.extract! @user, :id, :name
json.sleeprecords @user.sleep_record do |record|
  json.extract! record, :clockin_time, :clockout_time, :created_at
end
