class Category < ApplicationRecord
  has_many :product_categories
  has_many :products, through: :product_categories

  # What the has many through is doing : 
  # def products
  #   product_categories.map { |product_category| product_category.product}
  # end 
end
