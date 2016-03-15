class AuthorsController < ApplicationController
  def index
    @authors= Author.all
  end

  def show
    @author= Author.find(params[:id])
  end

  def new
    @author = Author.new
  end

  def create
    Author.create(author_params)
    redirect_to action: :index
  end

  def edit
    @author= Author.find(params[:id])
  end

  def update
    author= Author.find(params[:id])
    author.update(author_params)
    redirect_to action: :index
  end

  def destroy
    Author.find(params[:id]).destroy
    redirect_to action: :index
  end

  private
  def author_params
      params.require(:author).permit(:name, :biography)
  end
end