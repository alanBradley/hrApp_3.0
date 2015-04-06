require 'test_helper'

class AnnualsControllerTest < ActionController::TestCase
  setup do
    @annual = annuals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:annuals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create annual" do
    assert_difference('Annual.count') do
      post :create, annual: { date: @annual.date, profile_id: @annual.profile_id, type: @annual.type }
    end

    assert_redirected_to annual_path(assigns(:annual))
  end

  test "should show annual" do
    get :show, id: @annual
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @annual
    assert_response :success
  end

  test "should update annual" do
    patch :update, id: @annual, annual: { date: @annual.date, profile_id: @annual.profile_id, type: @annual.type }
    assert_redirected_to annual_path(assigns(:annual))
  end

  test "should destroy annual" do
    assert_difference('Annual.count', -1) do
      delete :destroy, id: @annual
    end

    assert_redirected_to annuals_path
  end
end
