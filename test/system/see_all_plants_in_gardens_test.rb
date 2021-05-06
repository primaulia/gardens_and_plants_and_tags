require "application_system_test_case"

class SeeAllPlantsInGardensTest < ApplicationSystemTestCase
  test "visiting the gardens show page" do
    visit garden_path(gardens(:one))

    assert_selector "h1", text: "See all the Plants in Jamies Garden"
    assert_selector ".plant_card", count: 1
  end
end
