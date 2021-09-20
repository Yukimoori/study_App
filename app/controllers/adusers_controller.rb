class AdusersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_id: params[:user][:user_id])
    if @user.save
      redirect_to adusers_index_path
    else
      render :new
    end
  end

  def delete
    @user = User.new
  end

  def destroy
    @user = User.find_by(id: params[:delete][:id])
    @user.destroy
    redirect_to adusers_index_path
  end

end
