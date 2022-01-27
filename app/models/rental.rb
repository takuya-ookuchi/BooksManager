# frozen_string_literal: true

class Rental < ApplicationRecord
  belongs_to :user
  belongs_to :book
end
