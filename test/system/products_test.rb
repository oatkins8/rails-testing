require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit root_url # "/"

    # save_and_open_screenshot # open image viewer of what your automated browser sees
    assert_selector "h1", text: "Awesome Products"
  end

  test "same number of cards displayed as products in db" do
    visit root_url
    assert_selector ".card-product", count: Product.count
  end

  test "lets a signed in user create a new product" do
    login_as users(:george) # Warden::TestHelpers (see test_helper.rb)
    visit "/products/new"
    # save_screenshot

    fill_in "product_name", with: "Le Wagon"
    fill_in "product_tagline", with: "Change your life: Learn to code"
    # save_screenshot

    click_on "Create Product"
    # save_screenshot

    # should be directed back to the Home with a new product
    assert_text "Change your life: Learn to code"
  end

end



# NOTES 1

# the syntax we use for testing
# test - similar to def
# visit - capybara - points the browser towards the url you want to test
# assert_selector - capybara - makes sure there is a h1 with the text "Awesome Products" on the page
# if the asset selector returns true - the test has passed
# little green dot means that you passed the test



# NOTES 4

# better to add nultiple methods test methods rather than multiple assertions in one test



# NOTES 6

# YOU NEEED TO WRITE A TEST THAT FAILS (AT FIRST)
