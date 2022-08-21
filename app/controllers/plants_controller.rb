class PlantsController < ApplicationController
  wrap_parameters format: []

    # GET /plants
    def index
      render json: Plant.all
    end

    # GET /plants/:id
    def show
      render json: Plant.find_by(id: params[:id])
    end

    # POST /plants
    def create
      plant = Plant.create(plant_params)
      render json: plant, status: :created
    end

    private

    def plant_params
      params.permit(:name, :price, :image)
    end
    
end
