class PollTestController < ApplicationController

  def basic
  end

  def unchanged
    if up?
      head(:not_modified)
    end
  end

end
