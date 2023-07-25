# frozen_string_literal: true

# Actor is a child of Artist, which is mapped with artists table having type Actor
class Actor < Artist
  validates :name, uniqueness: true
  scope :search_by_name, ->(search) { where('name ILIKE ?', "%#{search}%") if search.present? }

  # has_many :movie_actors
  # has_many :movies, through: :movie_actors
end
