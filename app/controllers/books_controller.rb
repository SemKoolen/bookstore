class BooksController < ApplicationController
  def index
    @books= Book.all
  end

  def show; end

  def new
    @book = Book.new
  end

  def create
    Book.create(book_params)
    redirect_to action: :index
  end

  def edit; end

  def update; end

  def destroy
    Book.find(params[:id]).destroy
    redirect_to action: :index
  end

  private
  def book_params
      params.require(:book).permit(:title, :description, :price)
  end
end
