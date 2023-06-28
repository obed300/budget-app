class Trade < ApplicationRecord
    has_many :categories, foreign_key: :category_id
    belongs_to :user, class_name: 'User'
end
