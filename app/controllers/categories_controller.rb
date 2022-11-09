class CategoriesController < ApplicationController

  def show
    category = Category.find(params[:id]).products
    render json: category
  end
end
