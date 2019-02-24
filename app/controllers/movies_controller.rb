class MoviesController < ApplicationController
	def index
		@movies = Movie.released
	end

	def show
		@movie=Movie.find(params[:id])
	end
	
	def edit
  		@movie = Movie.find(params[:id])

	end
	
	def update
  		@movie = Movie.find(params[:id])
  		 if @movie.update(movie_params)
  		 	flash[:notice] = "Movie successfully Updated!"
  			redirect_to @movie
  		else
  			render:edit
  		end
	end
	
	def new
		@movie =Movie.new
	end
	
	def create
		@movie=Movie.new(movie_params)
		if @movie.save
			redirect_to @movie
		else
		render:new
		end

	end
	
	def destroy
		@movie =Movie.find(params[:id])
		@movie.destroy
		redirect_to @movie
	end

private

	def movie_params
		params.require(:movie).permit(:title, :description, :rating, :released_on, :total_gross, :image_file_name, :cast, :duration, :director)
	end

end
