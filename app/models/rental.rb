# frozen_string_literal: true

class Rental < ApplicationRecord
  validate :validate_not_rentable_on_rental_going, on: :create
  validate :validate_not_returnable_before_rental

  belongs_to :user
  belongs_to :book

  def going?
    returned_at.nil?
  end

  private

  def validate_not_rentable_on_rental_going
    errors.add(book.title, 'は貸出中です。借りることはできません。') if book.renting?
  end

  def validate_not_returnable_before_rental
    errors.add(book.title, 'をまだ借りていません。') if @rental&.returned_at
  end
end
