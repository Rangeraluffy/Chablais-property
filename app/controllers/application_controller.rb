class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery prepend: true

  protected

  before_action :set_locale

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def default_url_options
    { locale: I18n.locale }
  end

  def configure_permitted_parameters
    @show_sidebar = true if account_signed_in?
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :telephone, :url, :details, :image, :image_cache, :company])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
  end
end
