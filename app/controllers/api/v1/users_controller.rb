class Api::V1::UsersController < Api::V1::BaseController
  before_action :set_user, only: [ :show, :friend_records]

  def show
  end

  def friend_records
    @friends = @user.friends
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
