class Product < ApplicationRecord
 
  validates :name, uniqueness: true, length: {minimum: 2, maximum: 100}
  validates :price, presence: true, numericality: {greater_than: 0}
  validates :description, length: {in: 10..500}
 


  
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

  belongs_to :supplier
  
end
