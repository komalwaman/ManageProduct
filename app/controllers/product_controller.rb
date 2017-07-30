class ProductController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    type = params[:product_type]
    @product = Product.new(:product_type => type)
  end

  def create
    @product = Product.new(product_params)
    @product.product_status = 1 if @product.product_status && @product.product_status != 0
 
    if @product.save
      redirect_to product_index_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  private
    def product_params
      params.require(:product).permit(:name, :description, :inward_date, :product_status, :product_type, :price, :color)
    end
end
