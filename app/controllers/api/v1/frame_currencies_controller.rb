module Api  
  module V1
    class FrameCurrenciesController < ApplicationController
      before_action :set_frame_currency, only: [:update, :destroy]
  
      def create
        @frame_currency = FrameCurrency.new(frame_currency_params)
      
        if @frame_currency.save
          render json: @frame_currency, status: :created, location: api_v1_frame_currency_url(@frame_currency)
        else
          render json: @frame_currency.errors, status: :unprocessable_entity
        end
      end
    
      def update
        if @frame_currency.update(frame_currency_params)
          render json: @frame_currency
        else
          render json: @frame_currency.errors, status: :unprocessable_entity
        end
      end
    
      def destroy
        @frame_currency.destroy
      end
    
      private
        def set_frame_currency
          @frame_currency = FrameCurrency.find(params[:id])
        end
      
        def frame_currency_params
          params.require(:frame_currency).permit!
        end
    end
  end
end