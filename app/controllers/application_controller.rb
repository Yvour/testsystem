class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :authenticate_user!, :check_first
  before_filter :configure_permitted_parameters, if: :devise_controller?
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:login, :firstname, :middlename, :lastname, :email, :password, :password_confirmation, :student_group_membership
      ) }
    devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:login, :password) }
  end

  def check_admin
    if user_signed_in?
      u = User.find(current_user.id)
      if (u.accesslevel == 1)
      true
      else
        redirect_to root_path
      end
    end
  end

  def check_teacher
    if user_signed_in?
      u = User.find(current_user.id)
      if (u.accesslevel == 2)
      true
      else
        redirect_to root_path
      end
    end
  end

  def check_student
    if user_signed_in?
      u = User.find(current_user.id)
      if (u.accesslevel == 4)
      true
      else
        redirect_to root_path
      end
    end
  end

  def check_student_or_teacher
    if user_signed_in?
      u = User.find(current_user.id)
      if (u.accesslevel & 6 > 0)
      true
      else
        redirect_to root_path
      end
    end
  end

  def check_first
    #    if user_signed_in?
    #      c = User.all.count
    #      if c == 1
    #        u = User.find(current_user.id);
    #       u.update(is_admin: true)
    #      end
  end

end

