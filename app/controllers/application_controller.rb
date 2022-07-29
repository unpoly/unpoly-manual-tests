class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :log_content_type

  # before_action :set_vary_header

  private

  def log_content_type
    Rails.logger.info("*** Got Content-Type: " + request.media_type.inspect)
    # sleep 1
  end

  # def set_vary_header
  #   if up?
  #     response.headers['Vary'] = 'X-Up-Target'
  #   end
  # end

end
