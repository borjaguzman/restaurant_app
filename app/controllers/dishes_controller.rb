class DishesController < ApplicationController
  def index
    @dishes = Dish.all
  end

  def show
    @dish = Dish.find(params[:id])
    @items = @dish.items
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
