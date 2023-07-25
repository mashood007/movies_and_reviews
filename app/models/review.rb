class Review < ApplicationRecord
  belongs_to :movie
  belongs_to :user

  scope :over_all, -> { group(:stars).select(:stars, 'COUNT(*) as total').order(:total) }
end
