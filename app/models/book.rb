# frozen_string_literal: true

class Book < ApplicationRecord
  validates :title, presence: true
  validates :title, length: { maximum: 30 }
end
