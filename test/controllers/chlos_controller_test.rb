require "test_helper"

class ChlosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chlo = chlos(:one)
  end

  test "should get index" do
    get chlos_url
    assert_response :success
  end

  test "should get new" do
    get new_chlo_url
    assert_response :success
  end

  test "should create chlo" do
    assert_difference("Chlo.count") do
      post chlos_url, params: { chlo: {  } }
    end

    assert_redirected_to chlo_url(Chlo.last)
  end

  test "should show chlo" do
    get chlo_url(@chlo)
    assert_response :success
  end

  test "should get edit" do
    get edit_chlo_url(@chlo)
    assert_response :success
  end

  test "should update chlo" do
    patch chlo_url(@chlo), params: { chlo: {  } }
    assert_redirected_to chlo_url(@chlo)
  end

  test "should destroy chlo" do
    assert_difference("Chlo.count", -1) do
      delete chlo_url(@chlo)
    end

    assert_redirected_to chlos_url
  end
end
