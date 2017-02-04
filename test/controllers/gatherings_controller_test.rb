require 'test_helper'

class GatheringsControllerTest < ActionController::TestCase
  setup do
    @gathering = gatherings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gatherings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gathering" do
    assert_difference('Gathering.count') do
      post :create, gathering: { company: @gathering.company, gather_level: @gathering.gather_level, name: @gathering.name, x_coords: @gathering.x_coords, y_coords: @gathering.y_coords }
    end

    assert_redirected_to gathering_path(assigns(:gathering))
  end

  test "should show gathering" do
    get :show, id: @gathering
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gathering
    assert_response :success
  end

  test "should update gathering" do
    patch :update, id: @gathering, gathering: { company: @gathering.company, gather_level: @gathering.gather_level, name: @gathering.name, x_coords: @gathering.x_coords, y_coords: @gathering.y_coords }
    assert_redirected_to gathering_path(assigns(:gathering))
  end

  test "should destroy gathering" do
    assert_difference('Gathering.count', -1) do
      delete :destroy, id: @gathering
    end

    assert_redirected_to gatherings_path
  end
end
