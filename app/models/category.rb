class Category < ApplicationRecord
    has_many :trades, through: :categories_trades 
    # has_and_belongs_to_many :trades, foreign_key: :trade_id
    belongs_to :user, class_name: 'User'
end
