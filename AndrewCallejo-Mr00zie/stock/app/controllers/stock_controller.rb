require 'date'

class StockController < ApplicationController

	@@client = Twitter::REST::Client.new do |config|
	  config.consumer_key    = "OcZTRZO0qXjr97LS4YiE0m4OE"
	  config.consumer_secret = "HQNyKqzJOGaAFQWrz0lJzw7qTLXrEfVt8vSiVhbLgQLP2Y5o1y"
	  config.access_token        = "11285042-3LvWvUf7WZNdMw69qiqzsIW7QXJTotvR1FzceJi2s"
      config.access_token_secret = "vJbhtOaBXapnysoACuWLpy945van9ccbNFGCzkcWSvmHR"
	end

	def new 
	end

	def index
		#@stock = Stock.all


		# @first_friend = @client.friends.first
	end

	def show
		@stock = Stock.find(params[:id])
	end

	def update
		@stock = Stock.create(params.require(:stock).permit(:x, :x, :x))
		@stocks_path.save
		redirect_to stocks_path
	end

	def edit 
	end

	def search
		@keyword = params[:keywords];

		# caculate the down score, [sell, bearish, short, puts]

		@negative_score = 0

		down_words = ["sell", "bearish", "short", "puts", "downgraded"]

		down_words.each do |down_word|

			@keywords = @keyword + " " + down_word	#conbine keywords

			@search_result = @@client.search(@keywords, options = 
			{
				:result_type => 'recent',
			}).take(100)

			now = Time.now

			number = 0

			@search_result.each do |tweet|
				 if(Time.at(tweet.created_at).to_date === Time.at(now).to_date)  #
				 	number += 1
				 end
			end

			@negative_score += number
		end


		@positive_score = 0

		up_words = ["buy", "bullish", "long", "calls", "upgrade"]

		up_words.each do |up_word|

			@keywords = @keyword + " " + up_word	#conbine keywords

			@search_result = @@client.search(@keywords, options = 
			{
				:result_type => 'recent',
			}).take(100)

			now = Time.now

			number = 0

			@search_result.each do |tweet|
				 if(Time.at(tweet.created_at).to_date === Time.at(now).to_date)  #
				 	number += 1
				 end
			end

			@positive_score += number
		end
	end


	
end
