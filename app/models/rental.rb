# frozen_string_literal: true

class Rental < ApplicationRecord
  validate :validate_not_rentable_on_rental_going
  validate :validate_not_returnable_on_rental_not_going

  belongs_to :user
  belongs_to :book

  def going?
    returned_at.nil?
  end

  private

  def validate_not_rentable_on_rental_going
    errors.add(book.title, 'は貸出中です。借りることはできません。') if @rental&.going?
  end

  def validate_not_returnable_on_rental_not_going
    errors.add(book.title, 'をまだ借りていません。') if @rental&.returned_at
  end
end
