require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  # setup do
  #   @micropost = static_pages_home(:one)
  # end

  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "RoR Tut Sample App"
  end

  test "should get index" do
    get static_pages_home_url
    assert_response :success
  end

  test "should get new" do
    get new_micropost_url
    assert_response :success
  end

  test "should create micropost" do
    assert_difference('Micropost.count') do
      post static_pages_home_url, params: { micropost: { content: @micropost.content, user_id: @micropost.user_id } }
    end

    assert_redirected_to micropost_url(Micropost.last)
  end

  test "should show micropost" do
    get micropost_url(@micropost)
    assert_response :success
  end

  test "should get edit" do
    get edit_micropost_url(@micropost)
    assert_response :success
  end

  test "should update micropost" do
    patch micropost_url(@micropost), params: { micropost: { content: @micropost.content, user_id: @micropost.user_id } }
    assert_redirected_to micropost_url(@micropost)
  end

  test "should destroy micropost" do
    assert_difference('Micropost.count', -1) do
      delete micropost_url(@micropost)
    end

    assert_redirected_to static_pages_home_url
  end
end
