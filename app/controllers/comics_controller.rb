class ComicsController < ApplicationController
  
  before_action :login_required

  def new
  end

  def create
   comic = Comic.new(comic_params)
   comic.save
   flash[:success] = "#{comic.title}を追加しました"
   redirect_to root_path
 end

 private

 def comic_params
   params.require(:comic).permit(:title)
 end

 def user_params
   params.require(:user).permit(:name,:email,:password,:password_confirmation)
 end

 def login_required
   redirect_to login_path unless current_user
 end


end
