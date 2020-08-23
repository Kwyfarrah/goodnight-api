class Api::V1::FriendshipsController < Api::V1::BaseController
  acts_as_token_authentication_handler_for User, except: [ :index, :show ]

  def index
    @friendships = User.find(params[:user_id]).friendships
  end

  def create
    @friendship = Friendship.new(friendship_params)
    @friendship.user = current_user
    if @friendship.save
      render json: { status: 'SUCCESS', data: index }
    else
      render_error
    end
  end

  def destroy
    @friendship = Friendship.find_by(user_id: params[:user_id], friend_id: params[:id])
    @friendship.destroy
    render json: { status: 'SUCCESS', data: index }
  end

  private

  def friendship_params
    params.require(:friendship).permit(:friend_id, :user_id)
  end

  def render_error
    render json: { errors: @friendship.errors.full_messages },
    status: :unprocessable_entity
  end
end

