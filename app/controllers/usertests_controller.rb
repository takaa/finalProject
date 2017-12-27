class UsertestsController < ApplicationController

  before_action :move_to_index, except: :index

  def index
    @usertests = Usertest.includes(:user).page(params[:page]).per(5).order("created_at DESC")
  end

  def new
  end

  def create
    Usertest.create(image: usertest_params[:image], text: usertest_params[:text], detail: usertest_params[:detail],picture: usertest_params[:picture],user_id: current_user.id)
  end

  def destroy
    usertest = Usertest.find(params[:id])
    usertest.destroy if usertest.user_id == current_user.id
  end

  def edit
    @usertest = Usertest.find(params[:id])
  end

  def update
    usertest = Usertest.find(params[:id])
    if usertest.user_id == current_user.id
      usertest.update(usertest_params)
    end
  end

  def show
    @usertest = Usertest.find(params[:id])
    @comments = @usertest.comments.includes(:user)
  end

  private
  def usertest_params
    params.permit(:image, :text, :detail, :picture)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
