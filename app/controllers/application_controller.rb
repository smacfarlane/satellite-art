class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  check_authorization unless: :special_controller

  rescue_from CanCan::AccessDenied, with: :handle_permission_error

  protected

  def special_controller
    devise_controller? || is_a?(HighVoltage::PagesController)
  end

  def handle_permission_error
    if signed_in?
      flash[:error] = 'You do not have permission to view this page'
      redirect_to root_url
    else
      flash[:notice] = 'Please sign in to perform the requested action'
      redirect_to new_user_session_url
    end
  end
end
