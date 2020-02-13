class Api::V1::DishesController < ApplicationController
    def index
        @dish = Dish.all
        render json: @dish
    end

    def show
        @dish = Dish.find(params[:id])
        render json: @dish
    end

    def create
        @dish = Dish.new(dish_params)
        if @dish.save
            render json: @dish
        else
            render error: { error: 'Unable to create dish.'}, status: 400
        end
    end
    
 
    private 

    def dish_params
        params.require(:dish).permit(:name)
    end

    def find_dishes
        @dish = Dish.find(params[:id])
    end
end
