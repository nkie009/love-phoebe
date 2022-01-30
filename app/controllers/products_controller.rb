class ProductsController < ApplicationController

  def new
    @product = Product.new
  end

  def create
    Product.create product_params
    redirect_to products_path
  end

  def index
    @products = Product.all
  end

  def show
    @product = Product.find params[:id]
  end

  def edit
    @product = Product.find params[:id]
  end

  def update
    @product = Product.find params[:id]
    product.update product_params
    redirect_to product_path(params[:id])
  end

  def destroy
    Product.destroy params[:id]
    redirect_to products_path
  end

  private
  def product_params
    params.require(:product).permit(:name, :price, :description, :in, :image, )
  end # of private

end#of class
