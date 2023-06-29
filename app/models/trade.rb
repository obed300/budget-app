class Trade < ApplicationRecord
    belongs_to :user, class_name: 'User'
    has_many :categories_trades
    has_many :categories, through: :categories_trades 
end
