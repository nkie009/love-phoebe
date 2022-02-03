class OrdersController < ApplicationController

  # def create # this to create final payment 
  #   order = Order.create(
      
  #   )
  # end

  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
    @order = Order.new
  end

end
