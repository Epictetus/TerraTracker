class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def after_sign_up_path_for(resource)
    resource.owns_company ? company_path : dashboard_index_path
  end
  
  def after_sign_in_path_for(resource)
    dashboard_index_path
  end
  
  def after_sign_out_path_for(resource)
    root_path
  end
  
  def current_company
    current_user.company
  end
end
