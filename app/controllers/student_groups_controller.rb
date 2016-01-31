class StudentGroupsController < ApplicationController
  before_action :set_student_group, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @student_groups = StudentGroup.all
    respond_with(@student_groups)
  end

  def show
    respond_with(@student_group)
  end

  def new
    @student_group = StudentGroup.new
    respond_with(@student_group)
  end

  def edit
  end

  def create
    @student_group = StudentGroup.new(student_group_params)
    @student_group.save
    respond_with(@student_group)
  end

  def update
    @student_group.update(student_group_params)
    respond_with(@student_group)
  end

  def destroy
    @student_group.destroy
    respond_with(@student_group)
  end

  private
    def set_student_group
      @student_group = StudentGroup.find(params[:id])
    end

    def student_group_params
      params.require(:student_group).permit(:groupname)
    end
end
