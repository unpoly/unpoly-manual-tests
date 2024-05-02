module FormTest
  class BasicsController < ApplicationController

    def new
    end

    def create
      sleep 1
      render 'form_test/submission_result'
    end

  end
end
