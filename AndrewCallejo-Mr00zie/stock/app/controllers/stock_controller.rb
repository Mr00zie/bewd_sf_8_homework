class StockController < ApplicationController

	def new 
	end

	def index
		#@stock = Stock.all
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
		@stock = Stock.where({title:params[:id]})
		#@buy = client.search('tsla'+'buy').count
		
		render "index"
	end

	def about
	end



		
	
end
