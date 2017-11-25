require 'test_helper'

class CustomizesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customize = customizes(:one)
  end

  test "should get index" do
    get customizes_url
    assert_response :success
  end

  test "should get new" do
    get new_customize_url
    assert_response :success
  end

  test "should create customize" do
    assert_difference('Customize.count') do
      post customizes_url, params: { customize: { description: @customize.description, slogan: @customize.slogan, title: @customize.title } }
    end

    assert_redirected_to customize_url(Customize.last)
  end

  test "should show customize" do
    get customize_url(@customize)
    assert_response :success
  end

  test "should get edit" do
    get edit_customize_url(@customize)
    assert_response :success
  end

  test "should update customize" do
    patch customize_url(@customize), params: { customize: { description: @customize.description, slogan: @customize.slogan, title: @customize.title } }
    assert_redirected_to customize_url(@customize)
  end

  test "should destroy customize" do
    assert_difference('Customize.count', -1) do
      delete customize_url(@customize)
    end

    assert_redirected_to customizes_url
  end
end
