class SleepRecordsController < ApplicationController
  def index
    @sleep_records = SleepRecord.all
  end

  def create
    @sleep_record = SleepRecord.new(sleeprecord_params)
    # we need `restaurant_id` to associate review with corresponding restaurant
    @user = current_user
    @sleep_record.user = @sleep_record
    @sleep_record.save
    redirect_to user_path(@user)
  end

  private

  def sleeprecord_params
    params.require(:sleep_record).permit(:clockin_time, :clockout_time)
  end
end
