class Api::V1::KindnessesController < ApplicationController


    def index
        kindnesses = Kindness.all
        render json: kindnesses
    end

    def show
        kindness = Kindness.find(params[:id])
        render json: kindness
    end

    def create
        kindness = Kindness.create(kindness_params)
        render json: review
    end

    def update
        kindness = Kindness.find(params[:id])
        kindness.update(kindness_params)
        render json: review
    end

    def destroy
        kindness = Kindness.find(params[:id])
        kindness.delete
        render json: kindness
    end

    

    private

    def kindness_params
        params.permit(:kindness, :kindness_id)
    end


end
