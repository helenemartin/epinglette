class UsersController < ApplicationController
  def show
    @pins= User.find_by(id: params[:id]).pins

  end
  def index
    @users= User.all
  end
end
