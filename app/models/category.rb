class Category < ApplicationRecord
    has_many trades, foreign_key: :trade_id
    belongs_to :user, class_name: 'User'
end
