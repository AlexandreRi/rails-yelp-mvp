class RestaurantsController < ApplicationController
  def home
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(strong_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @review = Review.new
  end

private

  def strong_params
    params.require(:restaurant).permit(:name, :address, :category, :phone_number)
  end

end
