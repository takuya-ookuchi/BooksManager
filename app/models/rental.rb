# frozen_string_literal: true

class Rental < ApplicationRecord
  validate :not_rentable_as_rental_going, on: :create

  belongs_to :user
  belongs_to :book

  def going?
    returned_at.nil?
  end

  private

  def not_rentable_as_rental_going
    errors.add(book.title, 'は貸出中です。借りることはできません。') if book.checked_out
  end
end
