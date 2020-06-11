class Api::OrdersController < ApplicationController

  def create
    @order = Order.new(
      user_id: params[:user_id],
      product_id: params[:product_id],
      quantity: params[:quantity],
      # subtotal: product.price
      # tax: @subtotal * 0.07,
      # total: @subtotal + @tax
    )

    if @order.save
      render json: {message: "order completed"}
    else 
      render json: {errors: @order.errors.full_messages}, status: :unprocessable_entity
    end 
  end
end


