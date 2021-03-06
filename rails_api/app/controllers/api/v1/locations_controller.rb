module Api::V1
  class LocationsController < ActionController::API

    def index
      @locations = Location.all
      render json: @locations
    end

    def create
      @location = new.Location(location_params)
      @location.save
    end

    private

    def location_params
       params.require(:location).permit(:name, :departure, :arrival)
    end

  end
end