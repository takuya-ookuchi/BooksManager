# frozen_string_literal: true

class RentalsController < ApplicationController
  def index; end

  def new
    @rental = Renatl.new
  end

  def edit; end

  def create
    @book = Book.find(params[:book_id])
    @rental = Rental.new(rental_params)
    @rental.save!
    redirect_to @book, notice: "書籍「#{@book.title}」をレンタルしました。"
  end

  def update
    @book = Book.find(params[:book_id])
    @rental = Rental.find_by(book_id: params[:book_id], returned_at: nil)
    @rental.update!(returned_at: Time.current)
    redirect_to @book, notice: "書籍「#{@book.title}」を返却しました。"
  end

  private

  def rental_params
    params.permit(:user_id, :book_id)
  end
end
