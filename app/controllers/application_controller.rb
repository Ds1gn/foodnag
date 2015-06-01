class ApplicationController < ActionController::Base
<<<<<<< HEAD
  before_action :authenticate_user!, except: [:show, :index]
=======
>>>>>>> 93d75143956cc93b4045ad76bf103c342e4575d7
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  attr_accessor :ingredient

  before_filter :configure_devise_parameters, if: :devise_controller?

class Ability
  include CanCan::Ability

  def initialize(user)
  end
end

	protected

	def configure_devise_parameters
		devise_parameter_sanitizer.for(:sign_up) << [:first_name, :last_name, :phone, :zip]
		devise_parameter_sanitizer.for(:account_update) << [:first_name, :last_name, :phone, :zip]
	end

  private

  def admin_only
    unless current_user.admin?
      
      redirect_to :back, :alert => "Access denied."

      return false
    end
  end

  def is_advertiser?
    if current_user.advertiser?
      redirect_to :back, notice: "Advertisers cannot access this page"
    end
  end
end
