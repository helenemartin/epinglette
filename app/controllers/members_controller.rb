class MembersController < ApplicationController
  def show
    @user= User.find(params[:id])
    @pins= @user.pins.order("created_at DESC")

   

  end
  def index
    @users= User.all
  end

  def update
    if @user.update(pin_params)
      redirect_to @user, notice: 'Pin was successfully updated.'
    else
      render action: 'edit'
    end
  end

# Never trust parameters from the scary internet, only allow the white list through.
  def member_params
    params.require(:pin).permit(:password, :website_url, :name)
  end

end
