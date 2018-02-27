class CategoriesController < ApplicationController
    before_action :set_category, only: [:show, :edit, :update, :destroy]

    def index
        @categories = Category.all
    end

    def new
        @category = Category.new
    end

    def create
        @category = Category.new(category_params)

        if @category.save
            flash[:alert] = "Successfully Saved Category"
            redirect_to category_path(@category)
        else
            flash[:alert] = "Failed to Save Category"
            render 'new'
        end
    end

    def show
    end

    def edit
    end

    def update
        if @category.update(category_params)
            flash[:alert] = "Successfully Updated Category"
            redirect_to category_path(@category)
        else
            flash[:alert] = "Failed to Update Category"
            render 'edit'
        end        
    end

    def destroy
        @category.destroy
        flash[:alert] = "Successfully Deleted Category"
        redirect_to root_path
    end

    private

    def category_params
        params.require(:category).permit(:name)
    end

    def set_category
        @category = Category.find(params[:id])
    end
end
