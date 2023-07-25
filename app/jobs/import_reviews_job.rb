class ImportReviewsJob < ApplicationJob
  queue_as :default

  def perform(file)
    CSV.foreach(file, headers: true) do |row|
      movie = Movie.find_by(title: row['Movie'])
      next if movie.blank?

      user = User.find_or_initialize_by(name: row['User'])
      user.reviews.build(movie: movie, stars: row['Stars'], comments: row['Review'])
      user.save
    end
  end
end
