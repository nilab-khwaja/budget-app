class ApplicationController < ActionController::Base
  # before_action :set_variables
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!

  def set_variables
    @current_user = current_user
  end

  def after_sign_out_path_for(_resource_or_scope)
    auth_path
  end

  def authenticate_user!
    return if user_signed_in? || action_name == 'create'

    current_uri = request.env['PATH_INFO']
    allowed_uris = [auth_path, '/users/sign_in', '/users/sign_up', '/users/password/new',
                    user_password_path, categorys_path]

    return if allowed_uris.include?(current_uri) || current_uri == new_user_registration_path

    redirect_to auth_path
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
