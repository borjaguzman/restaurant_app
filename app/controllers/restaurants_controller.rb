class RestaurantsController < ApplicationController
  def index
    @item = Item.find(params[:item_id])
    @restaurants = @item.restaurants
  end

  def show_items
    
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
