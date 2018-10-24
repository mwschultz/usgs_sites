class Water
  include HTTParty
  base_uri "https://waterservices.usgs.gov/nwis/iv"
  default_params format: "json", siteStatus: "active" #return the data in JSON format, and make sure it is active.
  format :json

  def self.for(state,data_point_string,site_type)
    response = get("/", query: {stateCd: state, parameterCd: data_point_string, siteType: site_type})['value']['timeSeries']
    response
  end
end
