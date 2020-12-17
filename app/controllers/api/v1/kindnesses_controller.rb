class Api::V1::KindnessesController < ApplicationController

    skip_before_action :verify_authenticity_token
    
    def index
        kindnesses = Kindness.all
        render json: kindnesses
    end

    def show
        kindness = Kindness.find(params[:id])
        render json: kindness
    end
    
    def create
        # byebug
        kindness = Kindness.create(kindness_params)
        render json: kindness
    end

    def update
        kindness = Kindness.find(params[:id])
        kindness.update(kindness_params)
        render json: kindness
    end

    def destroy
        kindness = Kindness.find(params[:id])
        kindness.delete
        render json: kindness
    end

    

    private

    def kindness_params
        params.require(:kindness).permit(:act, :category)
    end


end
