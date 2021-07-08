BIKESHARE_PROGRAM = Struct.new(:id, :name, :all_station_information_url, :all_station_status_url) do
  def tracking_hash
    { program_id: id,
      program_name: name
    }
  end
end

BIKESHARE_PROGRAMS = [
  BIKESHARE_PROGRAM.new(
    1,
    "Chicago Divvy",
    "https://gbfs.divvybikes.com/gbfs/en/station_information.json",
    "https://gbfs.divvybikes.com/gbfs/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    2,
    "Bergen Bysykkel",
    "https://gbfs.urbansharing.com/bergenbysykkel.no/station_information.json",
    "https://gbfs.urbansharing.com/bergenbysykkel.no/station_status.json"
  )
]
