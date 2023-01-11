class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

  def current_user
    @current_user ||= Contractor.find(session[:contractor_id]) if session[:contractor_id]
  end
  helper_method :current_user

  def authorize
    redirect_to '/login' unless current_user
  end
end
