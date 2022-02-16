# frozen_string_literal: true

class Book < ApplicationRecord
  # 本のタイトルのユニーク制約の設定について
  # 同じ本が２冊以上ある場合、１冊づつ別々で登録するためユニーク制約は設定しない
  validates :title, presence: true
  validates :title, length: { maximum: 30 }

  has_many :rentals, dependent: :destroy

  def going_rental
    rentals.where(returned_at: nil).first
  end

  def current_borrower
    going_rental.user
  end
end
