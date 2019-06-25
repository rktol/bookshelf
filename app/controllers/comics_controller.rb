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

 def edit
  @comic = Comic.find(params[:id])
 end

 def update
   @comic = Comic.find(params[:id])
   if @comic.update_attributes(comic_params)
     flash[:success] = "漫画の更新に成功しました"
     redirect_to read_path
   else
     render 'edit'
   end
 end

 def destroy
   Comic.find(params[:id]).destroy
   flash[:success]="漫画情報を削除しました"
   redirect_to read_path
 end

 private

 def comic_params
   params.require(:comic).permit(:title, :author)
 end


 def login_required
   redirect_to login_path unless current_user
 end


end
