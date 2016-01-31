class CoursesController < ApplicationController
  before_action :set_course, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @courses = Course.all
    respond_with(@courses)
  end

  def show
    respond_with(@course)
  end

  def new
    @course = Course.new
    @all_groups = StudentGroup.all
    respond_with(@course)
  end

  def edit
  end

  def create
    @course = Course.new(course_params)
    @course.save
    respond_with(@course)
  end

  def update
    @course.update(course_params)
    respond_with(@course)
  end

  def destroy
    @course.destroy
    respond_with(@course)
  end

  private
    def set_course
      @course = Course.includes(:course_groups).find(params[:id])
      @all_groups = StudentGroup.all
      
    end

    def course_params
      params.require(:course).permit(:discipline_id, :teacher_id, :coursename, :group_ids => []
      )
    end
end
