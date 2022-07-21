class UsersController < ApplicationController

  def index 
    users = User.all
    render json: users, status: :ok

  end

  def create     
    user = User.new(user_params)
    debugger 
    if user.save      
      serialized_data = ActiveModelSerializers::Adapter::Json.new(
        UserSerializer.new(user)
      ).serializable_hash
    
      render json: user, status: :ok
    else
      render json: user.errors, status: 404
    end
  end

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
