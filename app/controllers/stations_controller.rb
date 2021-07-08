class StationsController < ApplicationController
  def index
    ahoy.track "View All Station Informations", bikeshare_program.tracking_hash
    @stations = BikeshareProgramApi.all_station_information(program: bikeshare_program, tracker: ahoy)
    @bikeshare_program = bikeshare_program
  end

  def show
    ids = if params[:id] == "_list" then
            params[:ids].split(",")
          else
            [params[:id]]
          end
    ahoy.track "View Station Status", { program: bikeshare_program.tracking_hash, ids: ids }

    stations_information = BikeshareProgramApi.all_station_information(program: bikeshare_program, tracker: ahoy)
    informations = stations_information.select {|st| ids.include? st["station_id"]}

    stations_status = BikeshareProgramApi.all_station_status(program: bikeshare_program, tracker: ahoy)
    statuses = stations_status.select {|st| ids.include? st["station_id"]}

    @station_details = informations.zip(statuses).map{|info, status| info.merge(status)}
    @bikeshare_program = bikeshare_program
  end

  def bikeshare_program
    program_id = params.fetch("program_id", BIKESHARE_PROGRAMS.first.id).to_i
    BIKESHARE_PROGRAMS.find(-> { BIKESHARE_PROGRAMS.first }) { |program| program.id == program_id }
  end
end
