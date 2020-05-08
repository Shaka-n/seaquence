class LocationsController < ApplicationController 

    def index 
        @locations = Location.order(:country)
    end

    def show 
        @location = Location.find(params[:id])
    end

    def new 
        @location = Location.new 
        @location.markers.build(waterline_distance: 0)
        @location.markers.build(waterline_distance: 0)
        @location.markers.build(waterline_distance: 0)
        @location.markers.build(waterline_distance: 0)
        @location.markers.build(waterline_distance: 0)
        @location.markers.build(waterline_distance: 0)
        @location.markers.build(waterline_distance: 0)
        @location.markers.build(waterline_distance: 0)
        @location.markers.build(waterline_distance: 0)
        @location.markers.build(waterline_distance: 0)


    end 
      
    def create 
        @location = Location.create(location_params)

        markers_params[:markers_attributes].each do |m|

             Marker.create(
                 location_id: @location.id, 
                 waterline_distance: m[1][:waterline_distance].to_i)
                 #report_id: 
        end 
        
        redirect_to location_path(@location.id)
    end

    def edit 
        @location = Location.find(params[:id])
    end 

    def update
        @location = Location.find(params[:id])
        @location.update(location_params)
        redirect_to @location
      end

    def destory 
        @location = Location.find(params[:id])
        @location.destroy
      
        redirect_to location_path
    end 


    private 

    def location_params 
        params.require(:location).permit(:country, :zipcode, :bio, :name)
    end

    def markers_params
        params.require(:location).permit(markers_attributes: :waterline_distance)
    end
end
