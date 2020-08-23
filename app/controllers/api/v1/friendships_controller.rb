class Api::V1::FriendshipsController < Api::V1::BaseController
  acts_as_token_authentication_handler_for User, except: [ :index, :show ]

  def create
    @friend = User.find_by(name: params[:friend_name])
    @friendship = Friendship.create(current_user_id, @friend.id)
    if @friendship.save
    else
      render_error
    end
  end

  private

  def render_error
    render json: { errors: @friendship.errors.full_messages },
      status: :unprocessable_entity
  end
end


