class Trade < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :categories

  validates :name, presence: true

  validates :name, length: { maximum: 50 }

  validates :amount, presence: true

  validates :amount, numericality: true
end
