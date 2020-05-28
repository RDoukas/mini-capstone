Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/all_products" => "products#all_products_action"
    get "/single_product" => "products#single_product_action"
    get "/query_product_url" => "products#query_product_action"
  end 
end

