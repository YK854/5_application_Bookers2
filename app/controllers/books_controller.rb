class BooksController < ApplicationController

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id

    if @book.save
      flash[:success] = 'You have created book successfully.'
      redirect_to book_path(@book)
    else
      @user = current_user
      @books = Book.all
      render :index
    end
  end

  def index
    @book = current_user
    @books = Book.all
    @user = current_user
  end

  def show
    @book = Book.find(params[:id])
    @user = @book.user
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(booka_params)
      flash[:success] = 'You have updated user successfully.'
      redirect_to book_path
    else
      render :edit
    end
  end

  def destroy
    @book = Book.find(params[:id])
      if @book.destroy
        redirect_to books_path
      end
  end

  private

  def book_params
    params.permit(:title, :body)
  end

  def booka_params
    params.require(:book).permit(:title, :body)
  end

end