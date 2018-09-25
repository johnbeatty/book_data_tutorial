class Book < ApplicationRecord
  enum binding: [:hardcover, :paperback]
end
