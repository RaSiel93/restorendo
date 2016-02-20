class DishesController < ApplicationController
  def new
    @category = Category.find(params[:category_id])
    @dish = @category.dishes.new
  end

  def create
    @category = Category.find(params[:category_id])
    @dish = Dish.new(dish_params)
    @dish.save
    render :show
  end

  def show
    @category = Category.find(params[:category_id])
    @dish = Dish.find(params[:id])
  end

  def edit
    @category = Category.find(params[:category_id])
    @dish = Dish.find(params[:id])
  end

  def update
    @category = Category.find(params[:category_id])
    @dish = Dish.find(params[:id])
    @dish.update(dish_params)
    render :show
  end

  def destroy
    @dish = Dish.find(params[:id])
    @dish.destroy
    redirect_to restaurant_path
  end

  private

  def dish_params
    params.require(:dish).permit(:id, :category_id, :name, :price, :image)
  end
end
