class LocationsController < ApplicationController
    before_action :set_location, only: [:show, :edit, :update, :destroy]

    def index
        @locations = Location.all
    end

    def new
        @location = Location.new
    end

    def create
        @location = Location.new(location_params)

        if @location.save
            flash[:alert] = "Successfully Saved Location"
            redirect_to location_path(@location)
        else
            flash[:alert] = "Failed to Save Location"
            render 'new'
        end
    end

    def show
    end

    def edit
    end

    def update
        if @location.update(location_params)
            flash[:alert] = "Successfully Updated Location"
            redirect_to location_path(@location)
        else
            flash[:alert] = "Failed to Update Location"
            render 'edit'
        end        
    end

    def destroy
        @location.destroy
        flash[:alert] = "Successfully Deleted Location"
        redirect_to locations_path
    end

    private

    def location_params
        params.require(:location).permit(:name)
    end

    def set_location
        @location = Location.find(params[:id])
    end
end
