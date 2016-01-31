class DutiesController < ApplicationController
  before_action :set_duty, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @duties = Duty.all
    respond_with(@duties)
  end

  def show
    respond_with(@duty)
  end

  def new
    @duty = Duty.new
    respond_with(@duty)
  end

  def edit
  end

  def create
    @duty = Duty.new(duty_params)
    @duty.save
    respond_with(@duty)
  end

  def update
    @duty.update(duty_params)
    respond_with(@duty)
  end

  def destroy
    @duty.destroy
    respond_with(@duty)
  end

  private
    def set_duty
      @duty = Duty.find(params[:id])
    end

    def duty_params
      params.require(:duty).permit(:Discipline_id, :Teacher_id)
    end
end
