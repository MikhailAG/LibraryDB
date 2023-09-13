class Genre < ApplicationRecord
  has_many :genre_books
  has_many :books, through: :genre_books
  has_and_belongs_to_many :books
end