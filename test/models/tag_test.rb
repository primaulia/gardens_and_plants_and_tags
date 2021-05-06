require "test_helper"
require "pry-byebug"

class TegTest < ActiveSupport::TestCase
  test "it is invalid when it does not have a name" do
    tag = Tag.new
    tag.save
    assert(plant.errors.messages.has_key?(:name), "Should have an error message for the name")
  end
end
