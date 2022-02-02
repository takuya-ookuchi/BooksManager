# frozen_string_literal: true

class Rental < ApplicationRecord
  belongs_to :user
  belongs_to :book

  def book_is_lent_out
    returned_at.nil?
  end
end
