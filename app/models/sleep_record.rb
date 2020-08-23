class SleepRecord < ApplicationRecord
  belongs_to :user

  def self.sorted_by_time
    SleepRecord.all.order("clockout_time - clockin_time").reverse
  end

end
