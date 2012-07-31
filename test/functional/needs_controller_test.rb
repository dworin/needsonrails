require 'test_helper'

class NeedsControllerTest < ActionController::TestCase
  setup do
    @need = needs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:needs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create need" do
    assert_difference('Need.count') do
      post :create, need: { category_id: @need.category_id, latitude: @need.latitude, longitude: @need.longitude, needtext: @need.needtext, source: @need.source }
    end

    assert_redirected_to need_path(assigns(:need))
  end

  test "should show need" do
    get :show, id: @need
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @need
    assert_response :success
  end

  test "should update need" do
    put :update, id: @need, need: { category_id: @need.category_id, latitude: @need.latitude, longitude: @need.longitude, needtext: @need.needtext, source: @need.source }
    assert_redirected_to need_path(assigns(:need))
  end

  test "should destroy need" do
    assert_difference('Need.count', -1) do
      delete :destroy, id: @need
    end

    assert_redirected_to needs_path
  end
end
