class Category < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :trades
  has_one_attached :icon
end
