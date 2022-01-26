# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :set_user, only: %i[show edit update]
  def index
    @users = User.all
  end

  def show; end

  def new
    @user = User.new
  end

  def edit; end

  def create
    user = User.new(user_params)
    user.save!
    redirect_to users_url, notice: "「#{user.name}」を登録しました。"
  end

  def destroy; end

  def update
    @user.update!(user_params)
    redirect_to users_url, notice: "「#{@user.name}」の登録を更新しました。"
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
