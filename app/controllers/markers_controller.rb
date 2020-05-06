class MarkersController < ApplicationController

    def index
        @markers=Marker.all
    end
end
