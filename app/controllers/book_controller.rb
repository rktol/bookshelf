class BookController < ApplicationController
  def read
    @comics=Comic.all
  end
end
