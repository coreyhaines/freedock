require 'http'

class DivvyApi
  def self.all_station_information
    url = "https://gbfs.divvybikes.com/gbfs/en/station_information.json"
    HTTP.get(url).parse.dig("data", "stations")
  end

  def self.all_station_status
    url = "https://gbfs.divvybikes.com/gbfs/en/station_status.json"
    HTTP.get(url).parse.dig("data", "stations")
  end
end
