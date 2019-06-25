require 'test_helper'

class UserreadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @userread = userreads(:one)
  end

  test "should get index" do
    get userreads_url
    assert_response :success
  end

  test "should get new" do
    get new_userread_url
    assert_response :success
  end

  test "should create userread" do
    assert_difference('Userread.count') do
      post userreads_url, params: { userread: { comic_id: @userread.comic_id, user_id: @userread.user_id, vol: @userread.vol } }
    end

    assert_redirected_to userread_url(Userread.last)
  end

  test "should show userread" do
    get userread_url(@userread)
    assert_response :success
  end

  test "should get edit" do
    get edit_userread_url(@userread)
    assert_response :success
  end

  test "should update userread" do
    patch userread_url(@userread), params: { userread: { comic_id: @userread.comic_id, user_id: @userread.user_id, vol: @userread.vol } }
    assert_redirected_to userread_url(@userread)
  end

  test "should destroy userread" do
    assert_difference('Userread.count', -1) do
      delete userread_url(@userread)
    end

    assert_redirected_to userreads_url
  end
end
