class BookCopy < ApplicationRecord
  belongs_to :book

  has_many :reservations
end