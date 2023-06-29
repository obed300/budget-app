class Category < ApplicationRecord
    belongs_to :user, class_name: 'User'
    has_many :categories_trades, dependent: :destroy
    has_many :trades, through: :categories_trades 
end
