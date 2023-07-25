require 'csv'

class ImportMoviesJob < ApplicationJob
  queue_as :default

  def perform(file)
    CSV.foreach(file, headers: true) do |row|
      director = Director.find_or_create_by(name: row['Director'])
      location = Location.find_or_create_by(name: row['Filming location'], country: row['Country'])
      actor =  Actor.find_or_create_by(name: row['Actor'])
      movie = Movie.find_or_initialize_by(
        year: row['Year'],
        director: director,
        description: row['Description'],
        location: location,
        title: row['Movie']
      )
      movie.actors << actor
      movie.save
    end
  end
end
