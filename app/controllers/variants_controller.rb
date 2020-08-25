class VariantsController < ApplicationController
  def index
    @variants = Variants.not_deleted
  end

  def show
    @variant = Variant.find(params[:id])
  end

  def new
    @variant = Variant.new
  end

  def create
    @variant = Variant.new(product_params)
    @variant.save
    redirect_to variants_path
  end
  
  def edit
    @variant = Variant.find(params[:id])
  end

  def update
    @variant = Variant.find(params[:id])
    @variant.update(variant_params)
    redirect_to variants_path
  end

  def soft_delete
    update(soft_deleted: true)  
  end

  def undelete
    update(soft_deleted: false)
  end

  private

  def variant_params
    params.require(:product).permit(:sku, :stock_quantity)
  end
end
