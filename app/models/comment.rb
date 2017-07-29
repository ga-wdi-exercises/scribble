class Comment < ApplicationRecord
  belongs_to :post

  validates :username, :content, :rating, { presence: true }
  validates :rating, numericality: { only_integer: true }
  validates :rating, numericality: { less_than: 6 }
end
