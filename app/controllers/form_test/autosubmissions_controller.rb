module FormTest
  class AutosubmissionsController < ApplicationController

    def new
      render 'form'
    end

    def create
      sleep 0.3
      render 'form'
    end

  end
end
