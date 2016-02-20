class RestaurantsController < ApplicationController
  def show
  end

  def edit
  end

  def update
    current_restaurant.update(restaurant_params)
    render :show
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:id, :name)
  end
end
