class UsersController < ApplicationController
  def show
    @nickname = current_user.nickname
    @usertests = current_user.usertests
  end
end
