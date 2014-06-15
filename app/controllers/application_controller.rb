class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
skip_before_filter :require_no_authentication  
before_filter :configure_permitted_parameters, if: :devise_controller?
  

  
  protected    
    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :password, :password_confirmation, :remember_me, 
      	:first_name, :middle_name, :last_name, :birthday,  :passport_number, 
      	:No_passport, :nationality, :credit_card, :exp_credit_card, :admin ) }


      devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:email, :password, :password_confirmation, :remember_me, 
      	:first_name, :middle_name, :last_name, :birthday,  :passport_number, 
      	:No_passport, :nationality, :credit_card, :exp_credit_card, :admin ) }


      devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:email, :password, :password_confirmation, :remember_me, 
      	:first_name, :middle_name, :last_name, :birthday,  :passport_number, 
      	:No_passport, :nationality, :credit_card, :exp_credit_card, :admin ) }
    end  
end