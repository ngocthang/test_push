require 'test_helper'

class AssetNamesControllerTest < ActionController::TestCase
  setup do
    @asset_name = asset_names(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:asset_names)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create asset_name" do
    assert_difference('AssetName.count') do
      post :create, asset_name: { game: @asset_name.game, score: @asset_name.score }
    end

    assert_redirected_to asset_name_path(assigns(:asset_name))
  end

  test "should show asset_name" do
    get :show, id: @asset_name
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @asset_name
    assert_response :success
  end

  test "should update asset_name" do
    patch :update, id: @asset_name, asset_name: { game: @asset_name.game, score: @asset_name.score }
    assert_redirected_to asset_name_path(assigns(:asset_name))
  end

  test "should destroy asset_name" do
    assert_difference('AssetName.count', -1) do
      delete :destroy, id: @asset_name
    end

    assert_redirected_to asset_names_path
  end
end
