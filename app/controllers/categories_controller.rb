class CategoriesController < ApplicationController
  def new
    @category = current_restaurant.categories.new
  end

  def create
    @category = Category.new(category_params)
    @category.save
    render :show
  end

  def show
    @category = Category.find(params[:id])
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    @category.update(category_params)
    render :show
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to restaurant_path
  end

  private

  def category_params
    params.require(:category).permit(:id, :restaurant_id, :name)
  end
end
