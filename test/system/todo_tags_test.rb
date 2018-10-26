require "application_system_test_case"

class TodoTagsTest < ApplicationSystemTestCase
  setup do
    @todo_tag = todo_tags(:one)
  end

  test "visiting the index" do
    visit todo_tags_url
    assert_selector "h1", text: "Todo Tags"
  end

  test "creating a Todo tag" do
    visit todo_tags_url
    click_on "New Todo Tag"

    click_on "Create Todo tag"

    assert_text "Todo tag was successfully created"
    click_on "Back"
  end

  test "updating a Todo tag" do
    visit todo_tags_url
    click_on "Edit", match: :first

    click_on "Update Todo tag"

    assert_text "Todo tag was successfully updated"
    click_on "Back"
  end

  test "destroying a Todo tag" do
    visit todo_tags_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Todo tag was successfully destroyed"
  end
end
