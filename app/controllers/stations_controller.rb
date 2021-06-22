class StationsController < ApplicationController
  def index
    @stations = DivvyApi.all_station_information
  end

  def show
    ids = if DivvyApi::PRESETS.key?(params[:id]) then
            DivvyApi::PRESETS[params[:id]]
          else
            [params[:id]]
          end

    stations_information = DivvyApi.all_station_information
    informations = stations_information.select {|st| ids.include? st["station_id"]}

    stations_status = DivvyApi.all_station_status
    statuses = stations_status.select {|st| ids.include? st["station_id"]}

    @station_details = informations.zip(statuses).map{|info, status| info.merge(status)}
  end
end
