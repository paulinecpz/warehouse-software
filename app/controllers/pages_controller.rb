class PagesController < ApplicationController
  def home
  end
  def dashboard
    @products = Product.order(:created_at)

  end
  def products
  end
end
