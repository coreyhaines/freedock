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


end
