require 'net/http'
require 'json'

class DivvyApi
  def self.all_station_information
    url = "https://gbfs.divvybikes.com/gbfs/en/station_information.json"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    JSON.parse(response).dig("data", "stations")
  end

  def self.all_station_status
    url = "https://gbfs.divvybikes.com/gbfs/en/station_status.json"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    JSON.parse(response).dig("data", "stations")
  end
end
