require 'test_helper'

class ChainsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:chains)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create chain" do
    assert_difference('Chain.count') do
      post :create, :chain => { }
    end

    assert_redirected_to chain_path(assigns(:chain))
  end

  test "should show chain" do
    get :show, :id => chains(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => chains(:one).to_param
    assert_response :success
  end

  test "should update chain" do
    put :update, :id => chains(:one).to_param, :chain => { }
    assert_redirected_to chain_path(assigns(:chain))
  end

  test "should destroy chain" do
    assert_difference('Chain.count', -1) do
      delete :destroy, :id => chains(:one).to_param
    end

    assert_redirected_to chains_path
  end
end
