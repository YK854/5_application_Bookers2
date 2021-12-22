class BooksController < ApplicationController

  def create
    @book = Book.new
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to root_path
  end

  def index
    @books = Book.all
    @user = User.find_by(params[:id])
  end

  def show
    @books = Book.find_by(params[:id])
    @user = User.find_by(params[:id])
  end

  def edit
  end

  def destroy
  end

  private

  def book_params
    params.permit(:title, :body)
  end


end