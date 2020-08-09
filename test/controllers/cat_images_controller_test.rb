require 'test_helper'

class CatImagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cat_images_index_url
    assert_response :success
  end

  test "should get show" do
    get cat_images_show_url
    assert_response :success
  end

  test "should get new" do
    get cat_images_new_url
    assert_response :success
  end

  test "should get edit" do
    get cat_images_edit_url
    assert_response :success
  end

  test "should get all" do
    get cat_images_all_url
    assert_response :success
  end

  test "should get rank" do
    get cat_images_rank_url
    assert_response :success
  end

end
