class UsersController < ApplicationController
  def show
    @user = User.find(params[:id]).order(created_at: :asc)
  end
end
