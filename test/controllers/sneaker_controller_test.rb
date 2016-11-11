require 'test_helper'

class SneakerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sneaker_index_url
    assert_response :success
  end

  test "should get show" do
    get sneaker_show_url
    assert_response :success
  end

  test "should get edit" do
    get sneaker_edit_url
    assert_response :success
  end

  test "should get new" do
    get sneaker_new_url
    assert_response :success
  end

end
