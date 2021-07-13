namespace :free_dock do
  task :validate_programs => :environment do
    BIKESHARE_PROGRAMS.sort_by(&:name).each do |program|
      $stdout << program.name
      if (result = validate_program(program)) == :ok then
        $stdout << "✅"
      else
        $stdout << "❌ #{result}"
        $stderr.write program.tracking_hash
      end
      $stdout << "\n"
      $stdout.flush
    end
  end

  def validate_program(program)
    stations = BikeshareProgramApi.all_station_status(program: program)

    # Make sure there are stations
    return :empty_stations if stations.blank?

    # Make sure the number of bikes and docks is reasonable
    return :many_docks if stations.any? do |station|
      station["num_docks_available"].to_i > 100
      station["num_bikes_available"].to_i > 100
    end

    :ok
  rescue
    :error
  end
end
