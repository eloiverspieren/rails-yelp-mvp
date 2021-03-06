class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurants = Restaurant.find(params[:id])
  end

  def new
    @restaurants = Restaurant.new
  end

  def create
    @restaurants = Restaurant.new(restaurants_params)
    @restaurants.save
    redirect_to restaurants_path
  end

  def edit
    @restaurants = Restaurant.find(params[:id])
  end

  def update
    @restaurants = Restaurant.find(params[:id])
       @restaurants.update(restaurants_params)
    redirect_to restaurants_path
  end

  def destroy
    @restaurants = Restaurant.find(params[:id])
    @restaurants.destroy
    redirect_to restaurants_path
  end

  private

  def restaurants_params
    params.require(:restaurant).permit(:name, :address, :category, :description, :image_url)
  end
end
