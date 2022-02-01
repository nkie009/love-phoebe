class LineItemsController < ApplicationController

  

  private
  def line_items_params
    params.require(:line_items).permit(:product_id, :user_id, :qty)
  end



end
