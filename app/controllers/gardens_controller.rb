# class GardensController < ApplicationController
#   around_action :get_garden

#   def show
#   end

#   def get_garden
#     @garden = Garden.all.find do |garden|
#       garden == params[:garden_id]
#     end
#   end
# end


class GardensController < ApplicationController
  before_action :get_garden

  def show
  end

  private

  def get_garden
    @garden = Garden.find(params[:id])
  end
end
