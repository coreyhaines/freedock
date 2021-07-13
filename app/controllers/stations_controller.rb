class StationsController < ApplicationController
  def index
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

    @station_details = BikeshareProgramApi.specific_station_statuses(
      program: bikeshare_program,
      tracker: ahoy,
      ids: ids
    )
    @bikeshare_program = bikeshare_program
  end

  def bikeshare_program
    program_id = params.fetch("program_id", BIKESHARE_PROGRAMS.first.id).to_i
    BIKESHARE_PROGRAMS.find(-> { BIKESHARE_PROGRAMS.first }) { |program| program.id == program_id }
  end
end
