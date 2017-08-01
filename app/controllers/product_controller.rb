class ProductController < ApplicationController
  def index
    @products = ProductDecorator.decorate_collection(Product.all)
  end

  def new
    type = params[:product_type]
    product = Product.new(:product_type => type)
    @product = ProductDecorator.new(product)
  end

  def create
    product = Product.new(product_params)
    product.product_status = 1 if product.product_status && product.product_status != 0
 
    if product.save
      redirect_to product_index_path
    else
      @product = ProductDecorator.new(product)
      render 'new'
    end
  end

  def edit
    product = Product.find(params[:id])
    @product = ProductDecorator.new(product)
  end

  def update
    product = Product.find(params[:id])
 
    if product.update(product_params)
      redirect_to product_index_path
    else
      @product = ProductDecorator.new(product)
      render 'edit'
    end
  end

  private
    def product_params
      params.require(:product).permit(:name, :description, :inward_date, :product_status, :product_type, :price, :color)
    end
end
