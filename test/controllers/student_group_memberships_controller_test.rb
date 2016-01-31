require 'test_helper'

class StudentGroupMembershipsControllerTest < ActionController::TestCase
  setup do
    @student_group_membership = student_group_memberships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:student_group_memberships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student_group_membership" do
    assert_difference('StudentGroupMembership.count') do
      post :create, student_group_membership: { Student: @student_group_membership.Student, StudentGroup: @student_group_membership.StudentGroup }
    end

    assert_redirected_to student_group_membership_path(assigns(:student_group_membership))
  end

  test "should show student_group_membership" do
    get :show, id: @student_group_membership
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @student_group_membership
    assert_response :success
  end

  test "should update student_group_membership" do
    patch :update, id: @student_group_membership, student_group_membership: { Student: @student_group_membership.Student, StudentGroup: @student_group_membership.StudentGroup }
    assert_redirected_to student_group_membership_path(assigns(:student_group_membership))
  end

  test "should destroy student_group_membership" do
    assert_difference('StudentGroupMembership.count', -1) do
      delete :destroy, id: @student_group_membership
    end

    assert_redirected_to student_group_memberships_path
  end
end
