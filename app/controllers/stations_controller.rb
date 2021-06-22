class StationsController < ApplicationController
  def index
    @stations = DivvyApi.all_station_information
  end

  def show
    stations_information = DivvyApi.all_station_information
    @station_information = stations_information.find {|st| st["station_id"] == params[:id]}

    stations_status = DivvyApi.all_station_status
    @station_status = stations_status.find {|st| st["station_id"] == params[:id]}
  end
end
