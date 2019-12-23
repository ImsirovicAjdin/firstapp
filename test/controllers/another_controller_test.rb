require 'test_helper'

class AnotherControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get another_index_url
    assert_response :success
  end

  test "should get update" do
    get another_update_url
    assert_response :success
  end

  test "should get edit" do
    get another_edit_url
    assert_response :success
  end

  test "should get hello" do
    get another_hello_url
    assert_response :success
  end

end
