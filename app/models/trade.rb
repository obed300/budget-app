class Trade < ApplicationRecord
    has_many :categories, through: :categories_trades 
    # has_and_belongs_to_many :categories, foreign_key: :category_id
    has_many :categories_trades
    belongs_to :user, class_name: 'User'
end
