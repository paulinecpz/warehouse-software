class PagesController < ApplicationController
  def home
  end
  def dashboard
    @products = Product.all

  end
  def products
  end
end
