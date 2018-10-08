class BooksController < ApplicationController
  def index
    @categories = Book.all.order(:category).pluck(:category).uniq
    @publishers = Book.all.order(:publisher).pluck(:publisher).uniq
    @books = Book.all
  end
end