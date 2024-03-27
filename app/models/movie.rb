class Movie < ApplicationRecord
  validates :title, presence: true
  #validates :genre, presence: true
  #validates :synopsis, presence: true, length: { minimum: 10 }
end
