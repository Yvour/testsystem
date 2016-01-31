class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]
  before_action :get_groups, only: [:edit, :new]

  respond_to :html
  def index
    @students = Student.all
    respond_with(@students)
  end

  def show
    respond_with(@student)
  end

  def new
    @student = Student.new
    @student.build_student_group_membership
    respond_with(@student)
  end

  def edit
  end

  def create
    logger.info(student_params.to_s);
    @student = Student.new(student_params)
    @student.password = @student.email + '12345678'
    @student.accesslevel = 4
    @student.save
    respond_with(@student)
  end

  def update
    @student.update(student_params)
    respond_with(@student)
  end

  def destroy
    @student.destroy
    respond_with(@student)
  end

  private

  def set_student
    @student = Student.includes(:student_group_membership).find(params[:id])
  end

  def get_groups
    @studentgroups = StudentGroup.all
  end

  def student_params
  #  params[:student][:student_group_memberships][0] = params[:student][:student_group_membership]
    params.require(:student).permit(:login, :firstname, :middlename, :lastname, :email, 
    {student_group_membership_attributes: [:student_group_id]})
  end

 


end

