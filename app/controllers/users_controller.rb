class UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end

  def create
    user = User.new(user_params)

    if user.save!
      render json: user
    else
      render json: user.errors.full_messages, status: :unprocessable_entity
    end
  end

  def show
    @user = User.find(params[:id])

    if @user
      render json: @user
    else
      render json: user.errors.full_messages, status: :unprocessable_entity
    end
  end

  def update

    @user = User.find(params[:id])
    # byebug
    if @user.update_attributes(user_params)
      render json: @user
    else
      render @user.errors.full_message, status: 422
    end

  end

  def destroy

    @user = User.find(params[:id])
    if @user.destroy
      render plain: "Destroyed"
    else
      render plain: "Can't find user!"
    end

  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end

end
