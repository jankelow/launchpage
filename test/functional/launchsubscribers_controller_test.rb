require 'test_helper'

class LaunchsubscribersControllerTest < ActionController::TestCase
  setup do
    @launchsubscriber = launchsubscribers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:launchsubscribers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create launchsubscriber" do
    assert_difference('Launchsubscriber.count') do
      post :create, launchsubscriber: @launchsubscriber.attributes
    end

    assert_redirected_to launchsubscriber_path(assigns(:launchsubscriber))
  end

  test "should show launchsubscriber" do
    get :show, id: @launchsubscriber
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @launchsubscriber
    assert_response :success
  end

  test "should update launchsubscriber" do
    put :update, id: @launchsubscriber, launchsubscriber: @launchsubscriber.attributes
    assert_redirected_to launchsubscriber_path(assigns(:launchsubscriber))
  end

  test "should destroy launchsubscriber" do
    assert_difference('Launchsubscriber.count', -1) do
      delete :destroy, id: @launchsubscriber
    end

    assert_redirected_to launchsubscribers_path
  end
end
