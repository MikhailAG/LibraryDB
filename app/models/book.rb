class Book < ApplicationRecord
  has_many :book_copies
  #has_many :genres, through: :genre_books
  has_and_belongs_to_many :authors
  has_and_belongs_to_many :genres

  validates :title, presence: true, uniqueness: true
end