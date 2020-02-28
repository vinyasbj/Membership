class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    before_action :configure_permitted_parameters, if: :devise_controller?
    rescue_from CanCan::AccessDenied do |exception|
        respond_to do |format|
          format.json { head :forbidden, content_type: 'text/html' }
          format.html { redirect_to main_app.root_url, notice: exception.message }
          format.js   { head :forbidden, content_type: 'text/html' }
          format.pdf 
        #   {head :forbidden, content_type: 'text/pdf'}
        end
    end
    protected

    def configure_permitted_parameters
        # Fields for sign up
        devise_parameter_sanitizer.permit(:sign_up, keys: [:mobile,:name, :email, :password,:role_id])
        # Fields for editing an existing account
        # devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:username, :email, :password, :current_password, :gender) }
    end
end
