class ProductsController < ApplicationController
  before_action :load_product, only: [:update, :destroy]
  
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
    @product.variant = @variant

  end
  def create
    @product = Product.new(product_params)
    @product.variant = @variant
    @product.save
    redirect_to products_path
    

  end
  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product.update(product_params)
    redirect_to products_path
  end

  def destroy
    @product.update(soft_deleted: true)
    redirect_to products_path
  end
  def load_product
    @product = Product.find(params[:id])
  end

  private

  def product_params
    params.require(:product).permit(:title, :description)
  end
end
