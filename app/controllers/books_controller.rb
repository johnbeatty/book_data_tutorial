class BooksController < ApplicationController
  def index
    @categories = Book.all.order(:category).pluck(:category).uniq
    @books = Book.all
  end
end