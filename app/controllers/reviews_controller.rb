class ReviewsController < ApplicationController
    before_action :set_restaurant
    
    def new
        @review = Review.new
    end

    def create
        @review = Review.new(review_params)
        @review.restaurant_id = @restaurant.id
        # Will need to set a user

        if @review.save
            redirect_to restaurant_path(@restaurant)
        else 
            render 'new'
        end
    end

    def destroy
    end

    private

    def review_params
        params.require(:review).permit(:rating, :description)
    end

    def set_restaurant
        @restaurant = Restaurant.find(params[:restaurant_id])
    end
end
