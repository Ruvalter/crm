class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product= Product.new(product_params)
    if @product.save
      redirect_to products_path
    else
      render :new
    end
  end

  def product_params
    #strong params Rails
    params.require(:product).permit(:name, :cost, :price, :description)
  end
end
