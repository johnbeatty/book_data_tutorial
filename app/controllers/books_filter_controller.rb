class BooksFilterController < ApplicationController
  def index
    @books = Book.where(category: params[:categories]).order(:category)
  end
end