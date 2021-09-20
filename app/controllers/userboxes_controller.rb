class UserboxesController < ApplicationController
  def index
    @users = User.all
  end
end
