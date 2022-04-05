class ErrorTestController < ApplicationController

  def unexpected_content
    render status: params.fetch(:status, '200')
  end

end
