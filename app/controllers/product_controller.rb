class ProductController < ApplicationController
  def index
    @products = Product.all
  end
  def show
    @product=Product.find_by(id: params[:id])
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
    @product = Product.find_by(id: params[:id])
    @categories = Category.all
  end
  def update
    @product = Product.find_by(id: params[:id])
    @categories = Category.all
    if @product.update(product_params)
      redirect_to product_index_path
    else
      render :edit
    end
  end
  def destroy
    # render root_path
    @product = Product.find_by(id: params[:id])

    if @product.destroy
      redirect_to root_path
    elsif request.url.match(/\/product\/\d/i)
      render :show
    else
      redirect_to root_path
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :tagline, :url, :category_id)
  end

end
