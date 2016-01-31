require 'test_helper'

class TestSystemUsersControllerTest < ActionController::TestCase
  setup do
    @test_system_user = test_system_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:test_system_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create test_system_user" do
    assert_difference('TestSystemUser.count') do
      post :create, test_system_user: { firstname: @test_system_user.firstname, lastname: @test_system_user.lastname, login: @test_system_user.login, middlename: @test_system_user.middlename }
    end

    assert_redirected_to test_system_user_path(assigns(:test_system_user))
  end

  test "should show test_system_user" do
    get :show, id: @test_system_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @test_system_user
    assert_response :success
  end

  test "should update test_system_user" do
    patch :update, id: @test_system_user, test_system_user: { firstname: @test_system_user.firstname, lastname: @test_system_user.lastname, login: @test_system_user.login, middlename: @test_system_user.middlename }
    assert_redirected_to test_system_user_path(assigns(:test_system_user))
  end

  test "should destroy test_system_user" do
    assert_difference('TestSystemUser.count', -1) do
      delete :destroy, id: @test_system_user
    end

    assert_redirected_to test_system_users_path
  end
end
