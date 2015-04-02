class MovieController < ApplicationController
	def index
		@movies = Movie.all()
	end

	def show
		@movie = Movie.find(params[:id])
		
	end

	def new

	end

	def create
		# Q1. How can the program can get the user input ??? done!!
		# render plain: params[:movie].inspect
		# Q2. How to create a Movie instance? 
		@movie = Movie.create()
		@movie.title = params[:movie][:title]
		@movie.description = params[:movie][:description]
		@movie.year_released = params[:movie][:year_released].to_i

		# Q3. How to save the new instant to db? 
		@movie.save
		# Q4. Where to go after success or failed? 

		redirect_to movie_index_path
	end

	def edit
		@movie = Movie.find(params[:id])
	end

	def update
		@movie = Movie.find(params[:id])

		@movie.title = params[:movie][:title]
		@movie.description = params[:movie][:description]
		@movie.year_released = params[:movie][:year_released].to_i
		@movie.save
		# redirect_to movie_index_path
		redirect_to movie_index_path
  	end

	def search 
		
		
		@movies = Movie.where({title:params[:id]})
		#@movie.title = Movie.find(params[:movie][:title])
		#@movie.title = params[:movie][:title]
		
	end

end
