class LocationsController < ApplicationController
    def index
    end
    def new
        @location=Location.new
    end
    def create
        @location=Location.new(location_params)
        @location.save
    end
    def edit
    end
    def show
    end
    def update
    end
    def destroy
    end
    
    private
    def location_params
        params.require(:location).permit(:country, :area, :picture)
    end
end
