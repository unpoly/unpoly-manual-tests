require 'digest'

class CspTestController < ApplicationController

  def no_inline_scripts
    @allowed_handler = "alert('Allowed onclick handler')"
    response.headers['Content-Security-Policy'] = "default-src 'self'; script-src 'self' 'unsafe-inline'; script-src-elem 'self'; script-src-attr 'unsafe-hashes' 'sha256-#{Digest::SHA256.base64digest(@allowed_handler)}'"
  end

  def inline_scripts_require_nonce
    @content_security_policy_nonce = SecureRandom.base64(16)
    response.headers['Content-Security-Policy'] = "default-src 'self'; script-src 'self' 'nonce-#{content_security_policy_nonce}'"
  end

  def report_only
    @content_security_policy_nonce = SecureRandom.base64(16)
    response.headers['Content-Security-Policy-Report-Only'] = "default-src 'self'; script-src 'self' 'nonce-#{content_security_policy_nonce}'"
  end

  private

  helper_method def content_security_policy_nonce
    @content_security_policy_nonce || 'secret'
  end

  # def enable_nonce(&action)
  #   @old_content_security_polic_nonce_generator = Rails.configuration.content_security_policy_nonce_generator
  #   Rails.configuration.content_security_policy_nonce_generator = -> request { 'my-secret' }
  #
  #   # @old_content_security_polic_nonce_directives = Rails.configuration.content_security_policy_nonce_directives
  #   # Rails.configuration.content_security_policy_nonce_directives = %w[script-src]
  #
  #   action.call
  # ensure
  #   Rails.configuration.content_security_policy_nonce_generator = @old_content_security_polic_nonce_generator
  #   # Rails.configuration.content_security_policy_nonce_directives = @old_content_security_policy_nonce_directives
  # end

end
