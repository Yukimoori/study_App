class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(user_id: params[:session][:user_id])
    if user
      session[:user_id] = user.id
      redirect_to page_path(user.id)
    else
      redirect_to root_path, danger: '無効のユーザー名です'
    end
  end
end
