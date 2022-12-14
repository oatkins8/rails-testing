class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @products = Product.all
  end

  def show
    set_product
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if product.save
      redirect_to product_path(@product)
    else
      render "new"
    end
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :tagline)
  end
end
