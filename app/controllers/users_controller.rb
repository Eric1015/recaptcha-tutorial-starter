class UsersController < ApplicationController

  def index
    redirect_to root_path
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    flash[:alert] = @user.errors.full_messages unless @user.valid?
    if @user.save
      redirect_to thanks_path
    else
      redirect_to root_path
    end
  end

  def thanks
  end

  private 
  def user_params
    params.require(:user).permit(:name, :email, :animal)
  end

end
