class Reader < ApplicationRecord
  has_many :reservations
  has_many :books, through: :reservations
end