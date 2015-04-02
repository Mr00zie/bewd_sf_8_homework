class Movie < ActiveRecord::Base

# do some valisate the use input.
	validates :title, presence: true
	# validates :year_released, numericality: { greater_than: 2015 }

	# def self.search(query)
	# 	if query
	# 		@movie = Movie.where('title LIKE :search', { search: "%#{query}%"})
	# 	else
	# 		@movie = Movie.all
	# 		#params[:q]
	# 	end
	# end
end
