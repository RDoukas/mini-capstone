class Api::ProductsController < ApplicationController

  before_action :authenticate_admin, except: [:index, :show]

  def index
    @products = Product.all
    if params[:category]
      category = Category.find_by(name: params[:category])
      @products = category.products
    end
    if params[:search]
      @products = @products.where("name iLIKE ?", "%#{params[:search]}%")
    end
    if params[:discount]
      @products = @products.where("price > ?", 50)
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
    render 'index.json.jb'
  end

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      supplier_id: params[:supplier_id]
    )
    if @product.save # happy path
      render 'show.json.jb'
    else # sad path
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @product = Product.find(params[:id])
    render 'show.json.jb'
  end

  def update
    @product = Product.find(params[:id])
    
    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.description = params[:description] || @product.description
    @product.supplier_id = params[:supplier_id] || @product.supplier_id

    if @product.save
      render 'show.json.jb'
    else
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @carted_product = current_user.carted_products.find_by(id: params[:id], status: "carted")
    @carted_product.update(status: "removed")
    render json: {status: "Carted product removed"}
  end

end