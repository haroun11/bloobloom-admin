module Api  
  module V1
    class LenseCurrenciesController < ApplicationController
      before_action :set_lense_currency, only: [:update, :destroy]
  
      def create
        @lense_currency = LenseCurrency.new(lense_currency_params)
      
        if @lense_currency.save
          render json: @lense_currency, status: :created, location: api_v1_lense_currency_url(@lense_currency)
        else
          render json: @lense_currency.errors, status: :unprocessable_entity
        end
      end
    
      def update
        if @lense_currency.update(lense_currency_params)
          render json: @lense_currency
        else
          render json: @lense_currency.errors, status: :unprocessable_entity
        end
      end
    
      def destroy
        @lense_currency.destroy
      end
    
      private
        def set_lense_currency
          @lense_currency = LenseCurrency.find(params[:id])
        end
      
        def lense_currency_params
          params.require(:lense_currency).permit!
        end
    end
  end
end