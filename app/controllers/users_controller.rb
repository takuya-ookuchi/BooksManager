# frozen_string_literal: true

class UsersController < ApplicationController
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

  def update; end

  private

  def user_params
    params.require(:user).permit(:name)
  end
end
