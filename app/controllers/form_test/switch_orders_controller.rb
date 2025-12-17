module FormTest
  class SwitchOrdersController < ApplicationController

    class Order < ActiveType::Object
      attribute :extra_bacon, :boolean, default: false
      attribute :bacon_strips, :integer, default: 3

      def bacon_total
        if extra_bacon?
          bacon_strips * 0.5
        else
          0
        end
      end
    end

    def new
      build_order
    end

    def create
      build_order
      @order.validate
      render 'new'
    end

    private

    def build_order
      @order ||= Order.new(order_params)
    end

    helper_method def order_params
      params.require(:order).permit(
        :extra_bacon,
        :bacon_strips,
      )
    rescue ActionController::ParameterMissing
      {}
    end

  end
end
