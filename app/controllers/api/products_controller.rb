class Api::ProductsController < ApplicationController

  def index
    @products = Product.all
    if params[:search]
      @products = @products.where("name iLike ?", "%#{params[:search]}%")
    end 
    if params[:discount]
      @products = @products.where("price < ?", 35)
    end 
    if params[:sort] == "price"
      if params[:sort_order] == "asc"
        @products = @products.order(:price)
      elsif params[:sort_order] == "desc"
        @products = @products.order(price: :desc)
      end 
    else 
      @products = @products.order(:id)
    end 
    render "index.json.jb"
  end 

  def show
    @product = Product.find_by(id: params[:id])
    render "show.json.jb"
  end 

  def create
    @product = Product.new(
      id: params[:id],
      name: params[:name],
      price: params[:price],
      image_url: params[:image_url],
      description: params[:description]
    )
    if @product.save
      render "show.json.jb"
    else 
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end 
  end 


  def update
    @product = Product.find_by(id: params[:id])

    @product.id = params[:id] || @product.id
    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.image_url = params[:image_url] || @product.image_url
    @product.description = params[:description] || @product.description
    
    if @product.save
      render "show.json.jb"
    else 
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end 
  end 


  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    render json: {message: "The product was successfully removed."}
  end 

end
