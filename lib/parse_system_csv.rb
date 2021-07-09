require 'csv'
require 'http'

filename = ARGV[0]
id_offset = 3

CSV.foreach(filename, headers: true).map(&:to_h).lazy
  .map do |station|
  begin
    gbfs = HTTP.get(station["Auto-Discovery URL"]).parse
    station["gbfs"] = {
      "station_information" => gbfs.dig("data", "en", "feeds").find{|feed| feed["name"] == "station_information"}["url"],
      "station_status" => gbfs.dig("data", "en", "feeds").find{|feed| feed["name"] == "station_status"}["url"]
    }
    station
  rescue =>e
    $stderr.puts "Error Loading Discovery #{station["Name"]} #{e}"
  end
end
  .reject(&:nil?)
  .reject do |station|
  begin
    HTTP.get(station.dig("gbfs", "station_information")).parse
      .dig("data", "stations")
      .empty?
      .tap do |empty|
      if empty then
        $stderr.puts "Error Empty Stations #{station["Name"]}"
      end
    end
  rescue =>e
    $stderr.puts "Error Loading Station Information #{station["Name"]} #{e}"
  end
end.each_with_index do |station, index|
  $stdout.puts <<-DATA.strip
  BIKESHARE_PROGRAM.new(
  #{index+id_offset},
  \"#{station["Name"]}\",
  \"#{station["Country Code"]}\",
  \"#{station["Location"]}\",
  \"#{station["System ID"]}\",
  \"#{station["URL"]}\",
  \"#{station.dig("gbfs", "station_information")}\",
  \"#{station.dig("gbfs", "station_status")}\"
  ),
  DATA
  $stdout.flush
end
