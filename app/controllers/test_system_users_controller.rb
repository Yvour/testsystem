class TestSystemUsersController < ApplicationController
  before_action :set_test_system_user, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @test_system_users = TestSystemUser.all
    respond_with(@test_system_users)
  end

  def show
    respond_with(@test_system_user)
  end

  def new
    @test_system_user = TestSystemUser.new
    respond_with(@test_system_user)
  end

  def edit
  end

  def create
    @test_system_user = TestSystemUser.new(test_system_user_params)
    @test_system_user.save
    respond_with(@test_system_user)
  end

  def update
    @test_system_user.update(test_system_user_params)
    respond_with(@test_system_user)
  end

  def destroy
    @test_system_user.destroy
    respond_with(@test_system_user)
  end

  private
    def set_test_system_user
      @test_system_user = TestSystemUser.find(params[:id])
    end

    def test_system_user_params
      params.require(:test_system_user).permit(:login, :firstname, :middlename, :lastname)
    end
end
