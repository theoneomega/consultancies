require 'test_helper'

class AssignaturesControllerTest < ActionController::TestCase
  setup do
    @assignature = assignatures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:assignatures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create assignature" do
    assert_difference('Assignature.count') do
      post :create, assignature: { name: @assignature.name }
    end

    assert_redirected_to assignature_path(assigns(:assignature))
  end

  test "should show assignature" do
    get :show, id: @assignature
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @assignature
    assert_response :success
  end

  test "should update assignature" do
    patch :update, id: @assignature, assignature: { name: @assignature.name }
    assert_redirected_to assignature_path(assigns(:assignature))
  end

  test "should destroy assignature" do
    assert_difference('Assignature.count', -1) do
      delete :destroy, id: @assignature
    end

    assert_redirected_to assignatures_path
  end
end
