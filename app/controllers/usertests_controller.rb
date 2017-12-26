class UsertestsController < ApplicationController

  before_action :move_to_index, except: :index
  def index
    @usertests = Usertest.includes(:user)
  end

  def new
  end

  def create
    Usertest.create(image: usertest_params[:image], text: usertest_params[:text], user_id: current_user.id)
  end

  private
  def usertest_params
    params.permit(:image, :text)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
