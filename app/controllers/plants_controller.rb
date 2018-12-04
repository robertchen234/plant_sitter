class PlantsController < ApplicationController
  before_action :find_plant, only: [:show]

  def index
    @plants = Plant.all
  end

  def show

  end

  private

    # def plant_params
    #   params.require(:plant).permit(:species, :image, :info)
    # end

    def find_plant
      @plant = Plant.find(params[:id])
    end

end
