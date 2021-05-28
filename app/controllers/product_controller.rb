class ProductController < ApplicationController
  def index
    @products = Product.all
  end
  def show
    @product=Product.where(id: params[:id])
  end
  def new
    @product = Product.new
    @categories = Category.all
  end
  def create
    @product = Product.new(product_params)
    if(@product.save)
      # @product.save
      redirect_to product_index_path
    else
      render :new
    end
  end
  def edit
    @product = Product.where(id: params[:id])
  end
  def update
    @product = Product.where(id: params[:id])
    if @product.update(product_params)
      redirect_to product_index_path
    else
      render :edit
    end
  end
  def destroy
    # render root_path
  end

  private

  def product_params
    params.require(:product).permit(:name, :tagline, :url, :category_id)
  end

end
