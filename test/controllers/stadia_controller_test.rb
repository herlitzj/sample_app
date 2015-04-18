require 'test_helper'

class StadiaControllerTest < ActionController::TestCase
  setup do
    @stadium = stadia(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stadia)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stadium" do
    assert_difference('Stadium.count') do
      post :create, stadium: { cf: @stadium.cf, lc: @stadium.lc, lf: @stadium.lf, lfl: @stadium.lfl, location_id: @stadium.location_id, rc: @stadium.rc, rf: @stadium.rf, rfl: @stadium.rfl, stadium: @stadium.stadium, team_id: @stadium.team_id }
    end

    assert_redirected_to stadium_path(assigns(:stadium))
  end

  test "should show stadium" do
    get :show, id: @stadium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stadium
    assert_response :success
  end

  test "should update stadium" do
    patch :update, id: @stadium, stadium: { cf: @stadium.cf, lc: @stadium.lc, lf: @stadium.lf, lfl: @stadium.lfl, location_id: @stadium.location_id, rc: @stadium.rc, rf: @stadium.rf, rfl: @stadium.rfl, stadium: @stadium.stadium, team_id: @stadium.team_id }
    assert_redirected_to stadium_path(assigns(:stadium))
  end

  test "should destroy stadium" do
    assert_difference('Stadium.count', -1) do
      delete :destroy, id: @stadium
    end

    assert_redirected_to stadia_path
  end
end
