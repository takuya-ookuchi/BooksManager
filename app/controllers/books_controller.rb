# frozen_string_literal: true

class BooksController < ApplicationController
  def index; end

  def show; end

  def new
    @book = Book.new
  end

  def edit; end

  def create
    book = Book.new(book_params)
    book.save!
    redirect_to books_url, notice: "書籍「#{book.title}」を登録しました。"
  end

  def destroy; end

  def update; end

  private

    def book_params
      params.require(:book).permit(:title)
    end
end
