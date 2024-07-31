module FormTest
  class UploadsController < ApplicationController

    def new
    end

    def create
      if params['text-param'].blank?
        flash[:error] = 'Text field cannot be blank'
        render 'new', status: :unprocessable_entity
      else
        render 'form_test/submission_result'
      end
    end

  end
end
