class Api::ProductsController < ApplicationController

  def all_products_action
    @product = Product.all
    render "all_products.json.jb"
  end 

  def single_product_action
    @product = Product.all.sample
    render "single_product.json.jb"

  end 

end
