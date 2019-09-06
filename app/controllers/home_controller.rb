class HomeController < ApplicationController
  def index
    @api = StockQuote::Stock.new(api_key: 'pk_61fe698ab29349fe8bd0f1742be54f76')
    
    if params[:ticker] == ""
      @nothing = "Hey! You forgot to enter a symbol."
    elsif params[:ticker]
      @stock = StockQuote::Stock.quote(params[:ticker])
      #if stock varible doesn't exist, print error message
      if !@stock
        @error = "Hey! That stock symbol doesn't exist. Please try again."
      end
    end
      
  end

  def about
  end


end
