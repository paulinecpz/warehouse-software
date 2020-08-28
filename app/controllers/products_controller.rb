class ProductsController < ApplicationController
  before_action :load_product, only: [:update, :destroy]
  
  def index
    @products = Product.all.order('created_at DESC')
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
    @product.variants.build

  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path
    else
      render :new
    end
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
    params.require(:product).permit(:title, :description, variants_attributes: [:sku, :stock_quantity, :_destroy])
  end
end
