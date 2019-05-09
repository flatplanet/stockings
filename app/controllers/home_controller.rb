class HomeController < ApplicationController
  def index
  	if params[:ticker] == ""
  		@nothing = "Hey! You Forgot To Enter A Symbol"
  	elsif params[:ticker]
  		@stock = StockQuote::Stock.quote(params[:ticker])
  		if !@stock 
  			@error = "Hey! That Stock Symbol Doesn't Exist. Please Try Again."
  		end

  	end

  end

  def about
  end

end
