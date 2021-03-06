class ProductsController < ApplicationController
#  before_filter :signed_in_user
  
  def index
    @category = Category.find(params[:category_id])
    @products = @category.products

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: {:products => @products } }
    end
  end

  def show
    @product = Product.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @product }
    end
  end

  def new
    @category = Category.find(params[:category_id])
    @product = Product.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @product }
    end
  end

  # GET /products/1/edit
  def edit
    @product = Product.find(params[:id])
    @category = @product.category
  end

  def create
    @product = Product.new(params[:product])
    
    respond_to do |format|
      if @product.save
        format.html { redirect_to category_product_path(@product.category, @product), notice: 'Product was successfully created.' }
        format.json { render json: @product, status: :created, location: @product }
      else
        format.html { render action: "new" }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @product = Product.find(params[:id])

    respond_to do |format|
      if @product.update_attributes(params[:product])
        format.html { redirect_to category_product_path(@product.category, @product), notice: 'Product was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    respond_to do |format|
      format.html { redirect_to category_products_path(@product.category) }
      format.json { head :no_content }
    end
  end
end
