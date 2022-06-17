class ProductsController < ApplicationController
  before_action :set_params, only: [:edit, :show, :update, :destroy]
  
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.create(product_params)
    if @product.save
      redirect_to product_path(@product)
    else
      render :new
    end
  end

  def show;end

  def edit;end

  def update
    @product.update(product_params)
    redirect_to product_path(@product)
  end

  def destroy
    @product.destroy
    redirect_to products_path
  end

  private

  def set_params
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :description, :price)
  end
end
