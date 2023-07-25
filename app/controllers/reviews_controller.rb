class ReviewsController < ApplicationController
  def index
    @reviews = Review.over_all
    @average_review = Review.average(:stars).round(2)
  end

  def import
    ImportReviewsJob.perform_later(params[:file].path)
  end
end
