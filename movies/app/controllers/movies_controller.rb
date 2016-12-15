class MoviesController < ApplicationController

	def index
		@movies = Movie.all
	end

	def show
		@movie = Movie.find(params[:id])
	end

	def new
	end

	def create
		@movie = Movie.new(movie_whitelisted)

		@movie.save
		redirect_to @movie
	end

	private
	def movie_whitelisted
		params.require(:movie).permit(:genre, :title, :director, :starring, :rating)
	end
	

end
