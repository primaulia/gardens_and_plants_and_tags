require "test_helper"
require "pry-byebug"

class PlantTest < ActiveSupport::TestCase
  test "it is invalid when it does not have a name" do
    plant = Plant.new
    garden = Garden.new
    plant.garden = garden
    plant.save
    assert(plant.errors.messages.has_key?(:name), "Should have an error message for the name")
  end

  test "it is invalid when it does not have an image_url" do
    plant = Plant.new
    garden = Garden.new
    plant.garden = garden
    plant.save
    assert(plant.errors.messages.has_key?(:image_url), "Should have an error message for the image_url")
  end

  test "it is invalid when it does not belong to a garden" do
    plant = Plant.new
    plant.valid?
    assert(plant.errors.messages.has_key?(:garden), "Should have an error message for the garden")
  end
end
