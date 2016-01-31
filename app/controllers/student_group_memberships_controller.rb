class StudentGroupMembershipsController < ApplicationController
  before_action :set_student_group_membership, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @student_group_memberships = StudentGroupMembership.all
    respond_with(@student_group_memberships)
  end

  def show
    respond_with(@student_group_membership)
  end

  def new
    @student_group_membership = StudentGroupMembership.new
    respond_with(@student_group_membership)
  end

  def edit
  end

  def create
    @student_group_membership = StudentGroupMembership.new(student_group_membership_params)
    @student_group_membership.save
    respond_with(@student_group_membership)
  end

  def update
    @student_group_membership.update(student_group_membership_params)
    respond_with(@student_group_membership)
  end

  def destroy
    @student_group_membership.destroy
    respond_with(@student_group_membership)
  end

  private
    def set_student_group_membership
      @student_group_membership = StudentGroupMembership.find(params[:id])
    end

    def student_group_membership_params
      params.require(:student_group_membership).permit(:Student, :StudentGroup)
    end
end
