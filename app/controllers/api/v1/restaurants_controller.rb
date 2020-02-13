class Api::V1::RestaurantsController < ApplicationController
    def index
        @restaurant = Restaurant.all
        render json: @restaurant
    end

    def show
        @restaurant = Restaurant.find(params[:id])
        render json: @restaurant
    end

    def create
        @restaurant = Restaurant.new(restaurant_params)
        if @restaurant.save
            render json: @restaurant
        else
            render error: { error: 'Unable to create fact.'}, status: 400
        end
    end
    
    def update
        if @restaurant
            @restaurant.update(restaurant_params)
            render json: { message: 'Restaurant successfully updated.'}, status: 200
        else
            render json: { error: 'Unable to update restaurant.'}, status: 400
        end
    end

    def destroy
        if @restaurant
            @restaurant.destroy
            render json: { message: 'Restaurant successfully updated. '}, status: 200
        else
            render json: { error: 'Unable to delete Restaurant.'}, status: 400
        end
    end

    private 

    def restaurant_params
        params.require(:restaurant).permit(:name)
    end

    def find_restaurant
        @restaurant = Restaurant.find(params[:id])
    end
end
