class CategoriesTrade < ApplicationRecord
    belongs_to :trade
    belongs_to :category
end
