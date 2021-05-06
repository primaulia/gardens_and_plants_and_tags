require "test_helper"

class PlantTagTest < ActiveSupport::TestCase
  test "it is invalid when it does not have a name" do
    plant_tag = PlantTag.new
    assert_equal(plant_tag.valid?, false, 'Must be linked with a tag and a plant')
  end

  test "it is invalid when the association is not unique" do
    plant = Plant.first
    tag = Tag.first
    PlantTag.create(plant: plant, tag: tag)

    plant = Plant.first
    tag = Tag.first
    pt = PlantTag.new(plant: plant, tag: tag)

    assert_equal(pt.valid?, false, 'Plant tag association must be unique')
  end
end
