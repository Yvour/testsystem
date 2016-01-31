class CourseGroupsController < ApplicationController
  before_action :set_course_group, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @course_groups = CourseGroup.all
    respond_with(@course_groups)
  end

  def show
    respond_with(@course_group)
  end

  def new
    @course_group = CourseGroup.new
    respond_with(@course_group)
  end

  def edit
  end

  def create
    @course_group = CourseGroup.new(course_group_params)
    @course_group.save
    respond_with(@course_group)
  end

  def update
    @course_group.update(course_group_params)
    respond_with(@course_group)
  end

  def destroy
    @course_group.destroy
    respond_with(@course_group)
  end

  private
    def set_course_group
      @course_group = CourseGroup.find(params[:id])
    end

    def course_group_params
      params.require(:course_group).permit(:course_id, :group_id, :coursename)
    end
end
