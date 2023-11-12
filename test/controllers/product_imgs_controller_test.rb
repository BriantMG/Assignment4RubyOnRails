require "test_helper"

class ProductImgsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product_img = product_imgs(:one)
  end

  test "should get index" do
    get product_imgs_url
    assert_response :success
  end

  test "should get new" do
    get new_product_img_url
    assert_response :success
  end

  test "should create product_img" do
    assert_difference("ProductImg.count") do
      post product_imgs_url, params: { product_img: { title: @product_img.title } }
    end

    assert_redirected_to product_img_url(ProductImg.last)
  end

  test "should show product_img" do
    get product_img_url(@product_img)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_img_url(@product_img)
    assert_response :success
  end

  test "should update product_img" do
    patch product_img_url(@product_img), params: { product_img: { title: @product_img.title } }
    assert_redirected_to product_img_url(@product_img)
  end

  test "should destroy product_img" do
    assert_difference("ProductImg.count", -1) do
      delete product_img_url(@product_img)
    end

    assert_redirected_to product_imgs_url
  end
end
