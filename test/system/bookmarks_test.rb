require "application_system_test_case"

class BookmarksTest < ApplicationSystemTestCase
  setup do
    @bookmark = bookmarks(:one)
  end

  test "visiting the index" do
    visit bookmarks_url
    assert_selector "h1", text: "Bookmarks"
  end

  test "should create bookmark" do
    visit bookmarks_url
    click_on "New bookmark"

    fill_in "Collection", with: @bookmark.collection_id
    fill_in "Description", with: @bookmark.description
    fill_in "Link", with: @bookmark.link
    fill_in "Title", with: @bookmark.title
    click_on "Create Bookmark"

    assert_text "Bookmark was successfully created"
    click_on "Back"
  end

  test "should update Bookmark" do
    visit bookmark_url(@bookmark)
    click_on "Edit this bookmark", match: :first

    fill_in "Collection", with: @bookmark.collection_id
    fill_in "Description", with: @bookmark.description
    fill_in "Link", with: @bookmark.link
    fill_in "Title", with: @bookmark.title
    click_on "Update Bookmark"

    assert_text "Bookmark was successfully updated"
    click_on "Back"
  end

  test "should destroy Bookmark" do
    visit bookmark_url(@bookmark)
    click_on "Destroy this bookmark", match: :first

    assert_text "Bookmark was successfully destroyed"
  end
end
