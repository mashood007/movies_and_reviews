class MovieActor < ApplicationRecord
  belongs_to :movie
  belongs_to :actor, class_name: 'Actor'
  validates :movie_id, uniqueness: { scope: :actor_id }
end
