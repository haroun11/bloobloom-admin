module Api  
  module V1
    class LensesController < ApplicationController
      before_action :set_lense, only: [:show, :update, :destroy]
    
      # GET /lenses
      def index
        @lenses = Lense.all
      
        render json: @lenses
      end
    
      # GET /lenses/1
      def show
        render json: @lense
      end
    
      # POST /lenses
      def create
        @lense = Lense.new(lense_params)
      
        if @lense.save
          render json: @lense, status: :created, location: api_v1_frame_url(@lense)
        else
          render json: @lense.errors, status: :unprocessable_entity
        end
      end
    
      # PATCH/PUT /lenses/1
      def update
        if @lense.update(lense_params)
          render json: @lense
        else
          render json: @lense.errors, status: :unprocessable_entity
        end
      end
    
      # DELETE /lenses/1
      def destroy
        @lense.destroy
      end
    
      private
        # Use callbacks to share common setup or constraints between actions.
        def set_lense
          @lense = Lense.find(params[:id])
        end
      
        # Only allow a list of trusted parameters through.
        def lense_params
          params.require(:lense).permit!
        end
    end
  end
end