require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "full_name returns the capitalized first name and last name" do
    user = User.new(first_name: "john", last_name: "lennon")
    assert_equal "John Lennon", user.full_name # if this returns true -green, not -red
  end
end

# NOTES 7

# user_test is an automatically generated test file
