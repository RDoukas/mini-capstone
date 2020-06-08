class Api::SuppliersController < ApplicationController
    def index
      @suppliers = Supplier.all
      if params[:search]
        @suppliers = @suppliers.where("name iLIKE ?", "%#{params[:search]}%")
      else 
        @suppliers = @suppliers.order(:id)
      end 
      render 'index.json.jb'
    end
  
    def create
      @product = Product.new(
        name: params[:name],
        price: params[:price],
        description: params[:description],
        image_url: params[:image_url]
      )
      if @product.save # happy path
        render 'show.json.jb'
      else # sad path
        render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
      end
    end
  
  
    def show
      @product = Product.find_by(id: params[:id])
      render "show.json.jb"
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
