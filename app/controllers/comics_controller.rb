class ComicsController < ApplicationController
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
 
end
