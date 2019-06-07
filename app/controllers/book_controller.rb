class BookController < ApplicationController
  def read
    comics=Comic.all
    @randomcomic = comics.sample
  end
end
