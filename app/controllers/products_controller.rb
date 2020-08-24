class ProductsController < ApplicationController
  def index
    @products = Product.not_deleted
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end
  def create
    @product = Product.new(product_params)
    @product.save
  end
  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    @product.update(product_params)
  end

  private

  def product_params
    params.require(:product).permit(:title, :description, :variant)
  end
end
