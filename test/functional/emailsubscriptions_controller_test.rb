require 'test_helper'

class EmailsubscriptionsControllerTest < ActionController::TestCase
  setup do
    @emailsubscription = emailsubscriptions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:emailsubscriptions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create emailsubscription" do
    assert_difference('Emailsubscription.count') do
      post :create, emailsubscription: @emailsubscription.attributes
    end

    assert_redirected_to emailsubscription_path(assigns(:emailsubscription))
  end

  test "should show emailsubscription" do
    get :show, id: @emailsubscription
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @emailsubscription
    assert_response :success
  end

  test "should update emailsubscription" do
    put :update, id: @emailsubscription, emailsubscription: @emailsubscription.attributes
    assert_redirected_to emailsubscription_path(assigns(:emailsubscription))
  end

  test "should destroy emailsubscription" do
    assert_difference('Emailsubscription.count', -1) do
      delete :destroy, id: @emailsubscription
    end

    assert_redirected_to emailsubscriptions_path
  end
end
