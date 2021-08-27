require 'digest'

class CspTestController < ApplicationController

  def no_inline_scripts
    @allowed_handler = "alert('Allowed onclick handler')"
    response.headers['Content-Security-Policy'] = "default-src 'self'; script-src 'self' 'unsafe-inline'; script-src-elem 'self'; script-src-attr 'unsafe-hashes' 'sha256-#{Digest::SHA256.base64digest(@allowed_handler)}'"
  end

  def inline_scripts_require_nonce
    response.headers['Content-Security-Policy'] = "default-src 'self'; script-src 'self' 'nonce-secret'"
  end

end
