class ProgramsController < ApplicationController
  def index
    @programs = BIKESHARE_PROGRAMS.sort_by{ |program| [program.country_code, program.name] }
  end
end
