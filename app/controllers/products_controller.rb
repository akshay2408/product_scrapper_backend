class ProductsController < ApplicationController
  def index
    products = Category.joins(:products).with_product_detail.group_by(&:name)
    render json: products.as_json
  end

  def show
    product = Product.find(params[:id])
    render json: product.as_json
  end

  def scrape
    response = ProductSpider.new(params[:url]).parse
    render json: response.as_json
  end
end
