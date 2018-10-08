class BooksFilterController < ApplicationController
  def index
    book = Book
    book = book.where(category: params[:categories]).order(:category) unless params[:categories].size == 0
    book = book.where(publisher: params[:publishers]).order(:publisher) unless params[:publishers].size == 0
    book = book.all if params[:publishers].size == 0 and params[:categories].size == 0
    @books = book
  end
end