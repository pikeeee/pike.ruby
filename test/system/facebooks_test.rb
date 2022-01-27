require "application_system_test_case"

class FacebooksTest < ApplicationSystemTestCase
  setup do
    @facebook = facebooks(:one)
  end

  test "visiting the index" do
    visit facebooks_url
    assert_selector "h1", text: "Facebooks"
  end

  test "should create facebook" do
    visit facebooks_url
    click_on "New facebook"

    fill_in "Facebook", with: @facebook.facebook
    click_on "Create Facebook"

    assert_text "Facebook was successfully created"
    click_on "Back"
  end

  test "should update Facebook" do
    visit facebook_url(@facebook)
    click_on "Edit this facebook", match: :first

    fill_in "Facebook", with: @facebook.facebook
    click_on "Update Facebook"

    assert_text "Facebook was successfully updated"
    click_on "Back"
  end

  test "should destroy Facebook" do
    visit facebook_url(@facebook)
    click_on "Destroy this facebook", match: :first

    assert_text "Facebook was successfully destroyed"
  end
end
