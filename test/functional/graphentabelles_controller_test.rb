require 'test_helper'

class GraphentabellesControllerTest < ActionController::TestCase
  setup do
    @graphentabelle = graphentabelles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:graphentabelles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create graphentabelle" do
    assert_difference('Graphentabelle.count') do
      post :create, :graphentabelle => @graphentabelle.attributes
    end

    assert_redirected_to graphentabelle_path(assigns(:graphentabelle))
  end

  test "should show graphentabelle" do
    get :show, :id => @graphentabelle.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @graphentabelle.to_param
    assert_response :success
  end

  test "should update graphentabelle" do
    put :update, :id => @graphentabelle.to_param, :graphentabelle => @graphentabelle.attributes
    assert_redirected_to graphentabelle_path(assigns(:graphentabelle))
  end

  test "should destroy graphentabelle" do
    assert_difference('Graphentabelle.count', -1) do
      delete :destroy, :id => @graphentabelle.to_param
    end

    assert_redirected_to graphentabelles_path
  end
end
