class Api::V1::SleepRecordsController < Api::V1::BaseController
  def index
    @sleep_records = SleepRecord.all.order(created_at: :asc)
  end
end
