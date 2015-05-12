class ReviewsController < ApplicationController
	def new
		@movie = Movie.find(params[:movie_id])
		@review = @movie.reviews.build
	end

	def create
		@movie = Movie.find(params[:movie_id])
		@review = @movie.reviews.create(review_params)

		@review.save
		redirect_to movie
	end

	private
	def review_params
		params.require(:id).permit(:reviewer, :title, :body)
	end
end
