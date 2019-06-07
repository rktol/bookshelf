class BookController < ApplicationController
  def read
    comics=Comic.all
    @comicall = comics
  end
end
