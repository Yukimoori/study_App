class PagesController < ApplicationController
  def login
  end

  def user
    @user = User.find(params[:id])
    @user.total_score += @user.score
    @user.score = 0
    @user.update(score:@user.score,total_score:@user.total_score)
  end
end
