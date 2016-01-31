require 'test_helper'

class CourseGroupsControllerTest < ActionController::TestCase
  setup do
    @course_group = course_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:course_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create course_group" do
    assert_difference('CourseGroup.count') do
      post :create, course_group: { course_id: @course_group.course_id, coursename: @course_group.coursename, group_id: @course_group.group_id }
    end

    assert_redirected_to course_group_path(assigns(:course_group))
  end

  test "should show course_group" do
    get :show, id: @course_group
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @course_group
    assert_response :success
  end

  test "should update course_group" do
    patch :update, id: @course_group, course_group: { course_id: @course_group.course_id, coursename: @course_group.coursename, group_id: @course_group.group_id }
    assert_redirected_to course_group_path(assigns(:course_group))
  end

  test "should destroy course_group" do
    assert_difference('CourseGroup.count', -1) do
      delete :destroy, id: @course_group
    end

    assert_redirected_to course_groups_path
  end
end
