class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    protect_from_forgery with: :null_session
    protected

    def configure_permitted_parameters
        # Fields for sign up
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email, :password])
        # Fields for editing an existing account
        # devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:username, :email, :password, :current_password, :gender) }
    end
end
