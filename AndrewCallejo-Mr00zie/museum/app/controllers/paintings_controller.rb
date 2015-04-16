class PaintingsController < ApplicationController
	def new
	end

	def show
		@painting = Painting.find(params[:id])
	end

	def index
		@paintings = Painting.all
	end

	def edit
	end

	def update
		@painting = Painting.create(params.require(:painting).permit(:title, :artist, :museum))
		@painting.save
		redirect_to paintings_path
	end

	def search
		@paintings = Painting.where({title:params[:id]})
		render "index"
	end

	def create
		@painting = Painting.create(params.require(:painting).permit(:title, :artist, :museum))
		@painting.save
		redirect_to paintings_path
	end

end
