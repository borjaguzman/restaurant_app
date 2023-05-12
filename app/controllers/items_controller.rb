class ItemsController < ApplicationController
  def index
    @restaurant = Restaurant.find(params[:restaurant_id])
    @items = @restaurant.items
    #@dish = @items.dish
  end

  def index_by_dish
    @dish = Dish.find(params[:dish_id])
    @items = @dish.items
  end

  def restaurants_with_item
    @restaurants = Restaurant.joins(items: :dish).where(dishes: { id: params[:dish_id] })
  end

  def show
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
