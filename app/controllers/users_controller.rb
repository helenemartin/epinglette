class UsersController < ApplicationController
  protect_from_forgery except: :update_avatar

  def show
    @user= User.friendly.find(params[:id])
    @pins= @user.pins.order("created_at DESC")

  end

  def index
    @users= User.all
  end

  def update
    if @user.update(users_params)
      redirect_to @user, notice: 'Pin was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def update_avatar
    # params[:id] => user id
    # params[:file] => image file
    @user= User.find(params[:id])
    if @user == current_user
    @user.avatar = params[:file]
    @user.save
    render js: "window.location.reload();"
     end
end

# Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(:pin).permit(:password, :website_url, :bio, :name)
  end

end
