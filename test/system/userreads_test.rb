require "application_system_test_case"

class UserreadsTest < ApplicationSystemTestCase
  setup do
    @userread = userreads(:one)
  end

  test "visiting the index" do
    visit userreads_url
    assert_selector "h1", text: "Userreads"
  end

  test "creating a Userread" do
    visit userreads_url
    click_on "New Userread"

    fill_in "Comic", with: @userread.comic_id
    fill_in "User", with: @userread.user_id
    fill_in "Vol", with: @userread.vol
    click_on "Create Userread"

    assert_text "Userread was successfully created"
    click_on "Back"
  end

  test "updating a Userread" do
    visit userreads_url
    click_on "Edit", match: :first

    fill_in "Comic", with: @userread.comic_id
    fill_in "User", with: @userread.user_id
    fill_in "Vol", with: @userread.vol
    click_on "Update Userread"

    assert_text "Userread was successfully updated"
    click_on "Back"
  end

  test "destroying a Userread" do
    visit userreads_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Userread was successfully destroyed"
  end
end
