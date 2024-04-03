class Movie < ApplicationRecord
  has_one_attached :cover
  
  validates :title, presence: true
  #validates :genre, presence: true
  #validates :synopsis, presence: true, length: { minimum: 10 }
  VALID_STATUSES = ['released', 'coming out']
  validates :status, inclusion: { in: VALID_STATUSES }
end
