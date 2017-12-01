class HomeController < ApplicationController
  def index
    if params[:id] == ""
      @nothing = "Blank symbol. Please Enter a Stock Symbol"
    elsif
      if params[:id]
        begin
          @stock = StockQuote::Stock.quote(params[:id])
        rescue StandardError
          @error = "Invalid Symbol. Please Enter a Stock Symbol"
        end
      end
    end
  end
  
  def about
  end
  
end
