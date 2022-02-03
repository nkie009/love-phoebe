class CartController < ApplicationController

  before_action :check_if_logged_in 

  def index
  end

  def add 
    # TODO: prevent duplicate line items from being created with the same product id
    @item = LineItem.create product_id: params[:product_id], qty: 1, user_id: @current_user.id 
    redirect_to cart_index_path
  end
  
  def add_qty 
    @item = LineItem.find params[:id]
    @item.qty += 1
    @item.save
    redirect_to cart_index_path
    end

  def update_qty
    @item = LineItem.find_by(product_id: params[:product_id])
    @item.update qty: params[:qty]
    redirect_to cart_index_path
  end

  def destroy
    @item = LineItem.find_by(product_id: params[:product_id])
    @item.destroy
    redirect_to cart_index_path
  end

end
