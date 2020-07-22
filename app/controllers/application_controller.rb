class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  rescue_from CanCan::AccessDenied do |exception|
    render file: "#{Rails.root}/public/403.html", formats: [:html], status: 403, layout: false
  end

  rescue_from ActiveRecord::RecordNotFound, with: :not_found 
  rescue_from Exception, with: :not_found
  rescue_from ActionController::RoutingError, with: :not_found
  
  def raise_not_found
    raise ActionController::RoutingError.new("No route matches #{params[:unmatched_route]}")
  end
  
  def not_found
    respond_to do |format|
      format.html { render file: "#{Rails.root}/public/404", layout: false, status: :not_found }
      format.xml { head :not_found }
      format.any { head :not_found }
    end
  end
  
  def error
    respond_to do |format|
      format.html { render file: "#{Rails.root}/public/500", layout: false, status: :error }
      format.xml { head :not_found }
      format.any { head :not_found }
    end
  end



  def configure_permitted_parameters
    added_attrs = [:tgi, :operator, :logistic, :admin]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end
end
