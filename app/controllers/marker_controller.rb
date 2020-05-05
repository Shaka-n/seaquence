class MarkerController < ApplicationController
    def new
        @marker = Marker.new
    end

    def create
        @marker = Marker.create(marker_params)
    end
    
    def edit
        @marker = Marker.find(params[:id])
    end

    def update
        @marker = Marker.find(params[:id])
        @marker.update(marker_params)
    end

    private

    def marker_params
        params.require(:marker).permit(:waterline_distance, :report_id, :location_id)
    end
end
