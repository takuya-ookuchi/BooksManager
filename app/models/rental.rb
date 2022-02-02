# frozen_string_literal: true

class Rental < ApplicationRecord
  belongs_to :user
  belongs_to :book

  def going?
    returned_at.nil?
  end
end
