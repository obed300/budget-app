class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :trades, foreign_key: :author_id
  has_many :categories, foreign_key: :author_id
  has_many :trades
  has_many :categories

  validates :name, presence: true
  validates :name, length: { maximum: 50 }
end
