class UsersController < ApplicationController
  include CurrentUserConcern

  def index
    users = User.all
    render json: users
  end

  def update
    user = User.find(params['user']['id'])
    if(@current_user.id == user.id)
      @current_user.update!(user_params)
      render json: user
    else
      render json: {status: 401}
    end
  end

  private
  def user_params
    params.require(:user).permit(:id, :first_name, :last_name, :email, :gender, :role, :price, :location, :skill, :language)
  end
end