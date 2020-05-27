class Api::ProductsController < ApplicationController

  def all_products_action
    @products = Product.all
    render "all_products.json.jb"
  end 

  def single_product_action
    @single_product = Product.all.sample
    render "single_product.json.jb"

  end 

end
