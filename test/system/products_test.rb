require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit root_url # "/"

    save_and_open_screenshot # open image viewer of what your automated browser sees
    assert_selector "h1", text: "Awesome Products"
  end
end

# the syntax we use for testing
# test - similar to def
# visit - capybara - points the browser towards the url you want to test
# assert_selector - capybara - makes sure there is a h1 with the text "Awesome Products" on the page
# if the asset selector returns true - the test has passed
# little green dot means that you passed the test
