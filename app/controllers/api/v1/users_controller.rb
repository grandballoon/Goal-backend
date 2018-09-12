class Api::V1::UsersController < ApplicationController
  before_action :find_user, only: [:show]

  def index
    @users = User.all
    render json: @users
  end

  def show
    render json: @user
  end


  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user
    else
      if params[:user_name] == ''
        render json: {errors: "Username field must not be blank"}
      else
        render json: {errors: "Username already exist"}
      end
    end
  end


  private

  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    params.permit(:user_name, :email, :phone_number)
  end
end
