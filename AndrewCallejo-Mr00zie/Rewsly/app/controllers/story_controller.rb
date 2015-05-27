class StoryController < ApplicationController

	def index
		@stories = Story.all()
	end

	def show 
		@story = Story.find(params[:id])
	end

	def new
		@story = Story.new
	end

	def create 
		@story = Story.create()
		@story.title = params[:story][:title]
		@story.category = params[:story][:category]
		@story.link = params[:story][:link].to_i

		# Q3. How to save the new instant to db? 
		@story.save

		redirect_to story_index_path
	end

	def edit
		@story = Story.find(params[:id])
	end

	def search
		@stories = Story.where({title:params[:id]})
	end

end
