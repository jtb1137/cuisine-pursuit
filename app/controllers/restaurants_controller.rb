class RestaurantsController < ApplicationController
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
            flash[:alert] = "Successfully Saved Restaurant"
            redirect_to root_path # Change this
        else
            flash[:alert] = "Failed to Save Restaurant"
            render 'new'
        end
    end

    def show
    end

    def edit
    end

    def update
    end

    def destroy
    end

    private

    def restaurant_params
        params.require(:restaurant).permit(:name, :address)
    end
end
