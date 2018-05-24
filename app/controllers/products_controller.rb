class ProductsController < ApplicationController
  def index 
    @products = Product.includes(:category).where(pushlished: true)
  end
  def show 
    @product = Product.find(params[:id])
  end
  def new
    @product = Product.new
    @categories = Category.all
  end
  def create
    return redirect_to products_url, notice: 'Successfully created !' if @product.save
    flash.now[:notice] = 'Error !'
    render :new
  end
  private

  def product_params
    params.require(:product).permit(:title, :description,:price, :pushlished, :category_id)
  end
end