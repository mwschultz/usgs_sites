class Water
  include HTTParty
  debug_output $stdout
  #hostport = ENV['FOOD2FORK_SERVER_AND_PORT'] || "www.food2fork.com"
  #base_uri "https://#{hostport}/api"
  base_uri "https://waterservices.usgs.gov/nwis/iv"
  default_params format: "json", siteStatus: "active" #return the data in JSON format, and make sure it is active.
  format :json

  def self.for(state,data_point,site_type)
    response = get("/", query: {stateCd: state, parameterCd: data_point, siteType: site_type})['value']['timeSeries']
    response
  end
end
