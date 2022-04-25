module Api  
  module V1
    class FramesController < ApplicationController
      before_action :set_frame, only: [:show, :update, :destroy]
    
      # GET /frames
      def index
        @frames = Frame.all
        render json: @frames, 
                    include: [ :frame_currencies]
      end
    
      # GET /frames/1
      def show
        render json: @frame
      end
    
      # POST /frames
      def create
        @frame = Frame.new(frame_params)
      
        if @frame.save
          render json: @frame, status: :created, location: api_v1_frame_url(@frame)
        else
          render json: @frame.errors, status: :unprocessable_entity
        end
      end
    
      # PATCH/PUT /frames/1
      def update
        if @frame.update(frame_params)
          render json: @frame
        else
          render json: @frame.errors, status: :unprocessable_entity
        end
      end
    
      # DELETE /frames/1
      def destroy
        @frame.destroy
      end
    
      private
        # Use callbacks to share common setup or constraints between actions.
        def set_frame
          @frame = Frame.find(params[:id])
        end
      
        # Only allow a list of trusted parameters through.
        def frame_params
          params.require(:frame).permit!
        end
    end
  end
end