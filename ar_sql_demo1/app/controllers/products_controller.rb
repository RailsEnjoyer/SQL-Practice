class ProductsController < ApplicationController
  def index
    @products = Product.with_buyer_names
  end
end