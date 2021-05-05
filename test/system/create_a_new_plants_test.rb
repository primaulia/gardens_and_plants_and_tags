require "application_system_test_case"

class CreateANewPlantsTest < ApplicationSystemTestCase
  test "creating a new plant" do
    visit new_garden_plant_path(gardens(:one))

    assert_selector "h1", text: "Create A New Plant"

    fill_in 'plant[name]', with: 'ficus'
    fill_in 'plant[image_url]', with: 'https://www.gardeningknowhow.com/wp-content/uploads/2019/01/bonsai-ginseng-400x600.jpg'
    find("input[type='submit']").click


    assert_current_path(garden_path(gardens(:one)))
    assert_selector "h1", text: "See all the Plants in Jamies Garden"
    assert_selector ".plant_card", count: 2
  end
end
