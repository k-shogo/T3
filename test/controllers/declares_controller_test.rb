require 'test_helper'

class DeclaresControllerTest < ActionController::TestCase
  setup do
    @declare = declares(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:declares)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create declare" do
    assert_difference('Declare.count') do
      post :create, declare: { body: @declare.body, description: @declare.description, user_id: @declare.user_id }
    end

    assert_redirected_to declare_path(assigns(:declare))
  end

  test "should show declare" do
    get :show, id: @declare
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @declare
    assert_response :success
  end

  test "should update declare" do
    patch :update, id: @declare, declare: { body: @declare.body, description: @declare.description, user_id: @declare.user_id }
    assert_redirected_to declare_path(assigns(:declare))
  end

  test "should destroy declare" do
    assert_difference('Declare.count', -1) do
      delete :destroy, id: @declare
    end

    assert_redirected_to declares_path
  end
end
