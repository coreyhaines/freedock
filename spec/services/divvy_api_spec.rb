require 'spec_helper'
require_relative '../../app/services/divvy_api'


RSpec.describe DivvyApi do
  it "gets station information" do
    stations = DivvyApi.all_station_information
    p stations.first
  end

  it "gets station statuses" do
    stations = DivvyApi.all_station_status
    p stations.first
  end

  it "zips correctly" do
    infos = DivvyApi.all_station_information
    statuses = DivvyApi.all_station_status
    combined = infos.zip(statuses)
    p combined.first

    merged = combined.map{|info, status| info.merge(status)}
    p merged.first

  end


end
