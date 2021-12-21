class BooksController < ApplicationController

  def new
    @user = Book.new
  end

  def create
    @user = Book.new(book_params)
    @user.profile_image_id = current_user.id
    @user.save
  end

  def index
  end

  def show
  end

  def edit
  end

  def destroy
  end

  private

  def book_params
    params.require(:book).permit(:title, :body)
  end


end