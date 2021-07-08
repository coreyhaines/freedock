require 'http'

class BikeshareProgramApi
  def self.all_station_information(program:, tracker:)
    Rails.cache.fetch("all_station_information/#{program.name}", expires_in: 30.minutes) do
      Rails.logger.info "Retrieving and Caching All Station Information #{program.name}"
      tracker.track "Retrieving and Caching All Station Information", program.tracking_hash
      HTTP.get(program.all_station_information_url).parse.dig("data", "stations")
    end
  end

  def self.all_station_status(program:, tracker:)
    Rails.cache.fetch("all_station_status/#{program.name}", expires_in: 1.minute) do
      Rails.logger.info "Retrieving and Caching All Station status #{program.name}"
      tracker.track "Retrieving and Caching All Station status", program.tracking_hash
      HTTP.get(program.all_station_status_url).parse.dig("data", "stations")
    end
  end
end
