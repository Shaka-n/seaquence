class LocationsController < ApplicationController 

    def index 
        @locations = Location.all 
    end

    def show 
        @location = Location.find(params[:id])
    end

    def new 
        @location = Location.new 
        @location.markers.build(waterline_distance: "Marker")
        @location.markers.build(waterline_distance: "Marker")
        @location.markers.build(waterline_distance: "Marker")
        @location.markers.build(waterline_distance: "Marker")
        @location.markers.build(waterline_distance: "Marker")
        @location.markers.build(waterline_distance: "Marker")
        @location.markers.build(waterline_distance: "Marker")
        @location.markers.build(waterline_distance: "Marker")
        @location.markers.build(waterline_distance: "Marker")
        @location.markers.build(waterline_distance: "Marker")


    end 

    def create 
        @locatio = Location.create(location_params)

        redirect_to location_path(@location[:location_id])
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
        params.require(:location).permit(:country,
        :zipcode, 
        :bio,
        markers_attributes: [:waterline_distance])
    end

end