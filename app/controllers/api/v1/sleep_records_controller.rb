class Api::V1::SleepRecordsController < Api::V1::BaseController
  acts_as_token_authentication_handler_for User, except: [ :index, :show ]

  def index
    @sleep_records = User.find(params[:user_id]).sleep_record.order(created_at: :asc)
  end

  def create
    @sleep_record = SleepRecord.new(sleeprecord_params)
    # we need `restaurant_id` to associate review with corresponding restaurant
    @sleep_record.user = current_user
    if @sleep_record.save
      render json: { status: 'SUCCESS', data: index }
      else
      render_error
    end
  end

  private

  def sleeprecord_params
    params.require(:sleep_record).permit(:user_id, :clockin_time, :clockout_time)
  end

  def render_error
  render json: { errors: @sleep_record.errors.full_messages },
  status: :unprocessable_entity
  end
end
