class Api::UsersController < Api::BaseController
  include JsonApiParamsAdapter
  before_action :set_user, only: %w[show update]

  def show 
    options = {}
    includes = params[:include] || []
    options[:include] = includes.split(',')
 
    render_jsonapi_response(UserSerializer.new(@user, options))
  end

  def index
    users = User.all
 
    render_jsonapi_response(UserSerializer.new(users))
  end

  def update 
    if @user.update(update_user_params_permit)
      render_jsonapi_response(status: :ok)
    else
      render_jsonapi_response(@user.errors)
    end
  end

  def destroy
    # Implementar exclusão de user
  end

  private

  def update_user_params_permit
    params.require(:data).permit(
      :email
    )
  end

  def set_user
    @user = User.find(params[:id])

    raise ActiveRecord::RecordNotFound unless @user 
  end

end