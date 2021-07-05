class StationsController < ApplicationController
  def index
    ahoy.track "View All Station Informations"
    @stations = DivvyApi.all_station_information(tracker: ahoy)
  end

  def show
    ids = if params[:id] == "_list" then
            params[:ids].split(",")
          else
            [params[:id]]
          end
    ahoy.track "View Station Status", { ids: ids }

    stations_information = DivvyApi.all_station_information(tracker: ahoy)
    informations = stations_information.select {|st| ids.include? st["station_id"]}

    stations_status = DivvyApi.all_station_status(tracker: ahoy)
    statuses = stations_status.select {|st| ids.include? st["station_id"]}

    @station_details = informations.zip(statuses).map{|info, status| info.merge(status)}
  end
end
