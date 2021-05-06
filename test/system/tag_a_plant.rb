require "application_system_test_case"

class CreateANewPlantsTest < ApplicationSystemTestCase
  test "tagging a plant" do
    visit new_plant_plant_tag_path(plants(:one))

    assert_selector "h1", text: "Add new tag for kimura"

    fill_in 'plant_tag[tag]', with: tags(:one).name
    find("input[type='submit']").click


    assert_current_path(garden_path(gardens(:one)))
    assert_selector "h1", text: "See all the Plants in Jamies Garden"
    assert_selector ".card-tags", count: 1
  end
end
