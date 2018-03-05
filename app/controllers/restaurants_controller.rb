class RestaurantsController < ApplicationController
    before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

    def index
        @restaurants = Restaurant.all
    end

    def new
        @restaurant = Restaurant.new
    end

    def create
        @restaurant = Restaurant.new(restaurant_params)
        # don't forget to set values for associated models when they are added
        if @restaurant.save
            redirect_to restaurant_path(@restaurant)
        else
            render 'new'
        end
    end

    def show
    end

    def edit
    end

    def update
        if @restaurant.update(restaurant_params)
            redirect_to restaurant_path(@restaurant)
        else
            render 'edit'
        end        
    end

    def destroy
        @restaurant.destroy
        redirect_to root_path
    end

    private

    def restaurant_params
        params.require(:restaurant).permit(:name, :address, :restaurant_img, category_ids:[], categories_attributes: [:name], location_ids:[], locations_attributes: [:name, :location_img])
    end

    def set_restaurant
        @restaurant = Restaurant.find(params[:id])
    end
end
