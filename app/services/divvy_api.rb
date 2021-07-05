require 'http'

class DivvyApi
  def self.all_station_information(tracker:)
    Rails.cache.fetch("all_station_information/chicago", expires_in: 30.minutes) do
      Rails.logger.info "Retrieving and Caching All Station Information"
      tracker.track "Retrieving and Caching All Station Information"
      url = "https://gbfs.divvybikes.com/gbfs/en/station_information.json"
      HTTP.get(url).parse.dig("data", "stations")
    end
  end

  def self.all_station_status(tracker:)
    Rails.cache.fetch("all_station_status/chicago", expires_in: 1.minute) do
      Rails.logger.info "Retrieving and Caching All Station status"
      tracker.track "Retrieving and Caching All Station status"
      url = "https://gbfs.divvybikes.com/gbfs/en/station_status.json"
      HTTP.get(url).parse.dig("data", "stations")
    end
  end
end
