class FavouritesController < ApplicationController
  def index
    @favourites = Favourite.all
  end

  def create
    @car = Car.find(params[:car_id])
    if @car.favourite.nil?
      @car.create_favourite
      notice_msg = "Car added to your garage!"
    else
      notice_msg = "Car is already in your garage."
    end
    redirect_to car_path(@car), notice: notice_msg
  end

  def destroy
    @car = Car.find(params[:car_id])
    @car.favourite.destroy if @car.favourite
    redirect_to car_path(@car), notice: "Car removed from your garage."
  end
end
