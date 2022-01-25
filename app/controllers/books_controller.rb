# frozen_string_literal: true

class BooksController < ApplicationController
  before_action :set_book, only: %i[show edit update destroy]

  def index
    @q = Book.ransack(params[:q])
    @books = @q.result
  end

  def show; end

  def new
    @book = Book.new
  end

  def edit; end

  def create
    @book = Book.new(book_params)

    if @book.save
      redirect_to @book, notice: "書籍「#{@book.title}」を登録しました。"
    else
      render :new
    end
  end

  def destroy
    @book.destroy
    redirect_to books_url, notice: "書籍「#{@book.title}」を削除しました。"
  end

  def update
    @book.update!(book_params)
    redirect_to books_url, notice: "書籍「#{@book.title}」を更新しました。"
  end

  private

  def book_params
    params.require(:book).permit(:title)
  end

  def set_book
    @book = Book.find(params[:id])
  end
end
