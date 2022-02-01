class CartController < ApplicationController

  before_action :check_if_logged_in 

  def index
  end

  def add
    @item = LineItem.create product_id: params[:product_id], qty: 1, user_id: @current_user.id 
    redirect_to products_path
  end
  
  def add_qty
    raise 'hell'
    @item = LineItem.find_by product_id: params[:product_id] 
    @item.qty += 1
    @item.save
  end

  def checkout
  end

end
