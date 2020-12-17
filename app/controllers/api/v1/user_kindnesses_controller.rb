class Api::V1::UserKindnessesController < ApplicationController

    def index
        user_kindnesses = UserKindness.all
        render json: user_kindnesses
    end

    def show
        user_kindness = UserKindness.find(params[:id])
        render json: user_kindness
    end

    def create
        user_kindness = UserKindness.create(user_kindness_params)
        render json: user_kindness
    end

    def update
        user_kindness = UserKindness.find(params[:id])
        user_kindness.update(user_kindness_params)
        render json: user_kindness
    end

    def destroy
        user_kindness = UserKindness.find(params[:id])
        user_kindness.delete
        render json: user_kindness
    end



    private

    def user_kindness_params
        params.require(:user_kindness).permit(:user_id, :kindness_id, :date, :note, :completion)
    end
    

end
