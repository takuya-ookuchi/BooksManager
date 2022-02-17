# frozen_string_literal: true

class Book < ApplicationRecord
  # 本のタイトルのユニーク制約の設定について
  # 同じ本が２冊以上ある場合、１冊づつ別々で登録するためユニーク制約は設定しない
  validates :title, presence: true
  validates :title, length: { maximum: 30 }
  validate :validate_image

  has_many :rentals, dependent: :destroy
  has_one_attached :image

  def going_rental
    rentals.where(returned_at: nil).first
  end

  def current_borrower
    going_rental.user
  end

  def validate_image
    return unless image.attached?
    if image.blob.byte_size > 10.megabytes
      image = nil
      errors.add(:image, 'ファイルのサイズが大きすぎます')
    elsif !image?
      image = nil
      errors.add(:image, 'ファイルが対応している画像データではありません')
    end
    image
  end

  private

  def image?
    %w[image/jpg image/jpeg image/gif image/png].include?(image.blob.content_type)
  end
end
