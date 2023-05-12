class ApplicationController < ActionController::Base
    def index
        @restaurants = Restaurant.all
        @dish = Dish.all
    end
end
