require "application_system_test_case"

class AutocentresTest < ApplicationSystemTestCase
  setup do
    @autocentre = autocentres(:one)
  end

  test "visiting the index" do
    visit autocentres_url
    assert_selector "h1", text: "Autocentres"
  end

  test "creating a Autocentre" do
    visit autocentres_url
    click_on "New Autocentre"

    click_on "Create Autocentre"

    assert_text "Autocentre was successfully created"
    click_on "Back"
  end

  test "updating a Autocentre" do
    visit autocentres_url
    click_on "Edit", match: :first

    click_on "Update Autocentre"

    assert_text "Autocentre was successfully updated"
    click_on "Back"
  end

  test "destroying a Autocentre" do
    visit autocentres_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Autocentre was successfully destroyed"
  end
end
