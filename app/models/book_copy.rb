class BookCopy < ApplicationRecord
  belongs_to :book
  belongs_to :department

  has_many :reservations
end