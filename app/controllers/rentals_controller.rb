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
    redirect_to books_url, notice: "書籍「#{@book.title}」をレンタルしました。"
  end

  def update; end

  private

  def rental_params
    params.permit(:user_id, :book_id)
  end
end
