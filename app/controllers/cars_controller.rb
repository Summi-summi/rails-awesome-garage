class CarsController < ApplicationController
  def index
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
    # Prepare new instances for nested forms
    @review = Review.new
    @favourite = @car.favourite || @car.build_favourite
  end
end
