class ReportsController < ApplicationController 

    def index 
        @reports = Report.all 
    end

    def show 
        @report = Report.find(params[:id])
    end

    def new 
        @report = Report.new 
        @report.markers.build(waterline_distance: 0)
        @report.markers.build(waterline_distance: 0)
        @report.markers.build(waterline_distance: 0)
        @report.markers.build(waterline_distance: 0)
        @report.markers.build(waterline_distance: 0)
        @report.markers.build(waterline_distance: 0)
        @report.markers.build(waterline_distance: 0)
        @report.markers.build(waterline_distance: 0)
        @report.markers.build(waterline_distance: 0)
        @report.markers.build(waterline_distance: 0)
        @location = Location.find(params[:location_id])
    end 

    def create 
        @report = Report.create(report_params)
        # @location = Location.find(params[:location_id])

        markers_params[:markers_attributes].each do |m|

            Marker.create(
                report_id: @report.id, 
                waterline_distance: m[1][:waterline_distance].to_i,
                location_id: params[:location_id])

                # location_id: @location.id
        end

        redirect_to location_report_path(params[:location_id], @report.id)
    end

    def edit 
        @report = Report.find(params[:id])
    end 

    def update
        @report = Report.find(params[:id])
        @report.update(reports_params)
        redirect_to @report
      end

    def destory 
        @report = Report.find(params[:id])
        @report.destroy
      
    redirect_to report_path
    end 


    private 

    def report_params 
        params.require(:report).permit(:title, :body)
    end

    def markers_params
        params.require(:report).permit(markers_attributes: :waterline_distance)
    end

end