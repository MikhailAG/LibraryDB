class Book < ApplicationRecord
  has_many :book_copies
  has_and_belongs_to_many :authors
  has_and_belongs_to_many :genres

  validates :title, presence: true, uniqueness: true
  has_one_attached :cover
end