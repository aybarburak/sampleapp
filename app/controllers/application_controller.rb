class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  rescue_from CanCan::AccessDenied, :with => :access_denied

  private
  def access_denied
    flash[:alert] = 'You are not authorized to access this page'
    redirect_to root_path
  end

end
