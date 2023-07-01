class Trade < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :categories

  validates :name, presence: true

  validates :name, length: { maximum: 50 }

  validates :amount, presence: true

  validates :amount, numericality: true

  validate :at_least_one_category_selected

  private

  def at_least_one_category_selected
    errors.add(:category_ids, 'must have at least one category selected') if category_ids.blank?
  end
end
