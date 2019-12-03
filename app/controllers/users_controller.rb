class UsersController < ApplicationController
  include CurrentUserConcern

  def update
    user = User.find(params['role']['id'])
    if(@current_user.id == user.id)
      render json: params['role']['id']
    end
    
  end

end