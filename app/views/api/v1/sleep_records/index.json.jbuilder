json.array! @sleep_records do |sleep_record|
  json.extract! sleep_record.user, :id, :name
  json.extract! sleep_record, :clockin_time, :clockout_time, :created_at
end
