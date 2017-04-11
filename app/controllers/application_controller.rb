class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_devise_params, if: :devise_controller?

  def current_user_subscribed?
    user_signed_in? && current_user.subscribed?
  end
  helper_method :current_user_subscribed?

  def configure_permitted_devise_params
    added_params = [:name]
    devise_parameter_sanitizer.permit :sign_up, keys: added_params
    devise_parameter_sanitizer.permit :account_update, keys: added_params
  end
end
