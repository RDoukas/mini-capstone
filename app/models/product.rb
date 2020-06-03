class Product < ApplicationRecord
  def friendly_updated_at
    updated_at.strftime("%b %e, %l:%M %p")
  end
  
  def is_discounted? 
    price < 40
  end

  def tax 
    price * 0.09
  end 

  def total 
    price + tax
  end 
end
