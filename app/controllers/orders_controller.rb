class OrdersController < ApplicationController

  def create 
      redirect_to root_path
  end

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
