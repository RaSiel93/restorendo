class ToppingsController < ApplicationController
  def new
    @category = Category.find(params[:category_id])
    @dish = Dish.find(params[:dish_id])
    @topping = @dish.toppings.new
  end

  def create
    @category = Category.find(params[:category_id])
    @dish = Dish.find(params[:dish_id])
    @topping = Topping.new(topping_params)
    @topping.save
    render :show
  end

  def show
    @category = Category.find(params[:category_id])
    @dish = Dish.find(params[:dish_id])
    @topping = Dish.find(params[:id])
  end

  def edit
    @category = Category.find(params[:category_id])
    @dish = Dish.find(params[:dish_id])
    @topping = Dish.find(params[:id])
  end

  def update
    @category = Category.find(params[:category_id])
    @dish = Dish.find(params[:dish_id])
    @topping = Topping.find(params[:id])
    @topping.update(topping_params)
    render :show
  end

  def destroy
    @topping = Topping.find(params[:id])
    @topping.destroy
  end

  private

  def topping_params
    params.require(:topping).permit(:id, :dish_id, :name, :price)
  end
end
