require "application_system_test_case"

class ProductImgsTest < ApplicationSystemTestCase
  setup do
    @product_img = product_imgs(:one)
  end

  test "visiting the index" do
    visit product_imgs_url
    assert_selector "h1", text: "Product imgs"
  end

  test "should create product img" do
    visit product_imgs_url
    click_on "New product img"

    fill_in "Title", with: @product_img.title
    click_on "Create Product img"

    assert_text "Product img was successfully created"
    click_on "Back"
  end

  test "should update Product img" do
    visit product_img_url(@product_img)
    click_on "Edit this product img", match: :first

    fill_in "Title", with: @product_img.title
    click_on "Update Product img"

    assert_text "Product img was successfully updated"
    click_on "Back"
  end

  test "should destroy Product img" do
    visit product_img_url(@product_img)
    click_on "Destroy this product img", match: :first

    assert_text "Product img was successfully destroyed"
  end
end
