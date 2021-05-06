# class PlantsController < ApplicationController
#   def new
#     @plant = Plant.build
#   end

#   def create
#     Garden.find(params[:garden_id]).yield_self do |g|
#       @plant = Plant.new(plant_params)
#       @plant.g = g
#       @plant.save!
#     end
#     redirect_to garden_plant_path(g)
#   end

#   restricted

#   def plant_params
#     params.require(:plant).permit!
#   end
# end

class PlantsController < ApplicationController
  def new
    @garden = Garden.find(params[:garden_id])
    @plant = Plant.new
  end

  def create
    @garden = Garden.find(params[:garden_id])
    @plant = Plant.new(plant_params)
    @plant.garden = @garden
    @plant.save
    redirect_to garden_path(@garden)
  end

  private

  def plant_params
    params.require(:plant).permit(:name, :image_url)
  end
end
