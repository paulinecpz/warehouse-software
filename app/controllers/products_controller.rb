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
    redirect_to products_path

  end
  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    @product.update(product_params)
    redirect_to products_path
  end

  def soft_delete
    update(soft_deleted: true)  
  end

  def undelete
    update(soft_deleted: false)
  end

  private

  def product_params
    params.require(:product).permit(:title, :description)
  end
end
