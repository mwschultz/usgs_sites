class Water
  include HTTParty
  #hostport = ENV['FOOD2FORK_SERVER_AND_PORT'] || "www.food2fork.com"
  #base_uri "https://#{hostport}/api"
  #default_params key: ENV['FOOD2FORK_KEY'] || "5ca60b6295af841d9cd7ccfa00bae109"
  format :json

  def self.for(state)
    #get("/search", query: { q: keyword})["recipes"]
    response = get("https://waterservices.usgs.gov/nwis/iv/?format=json&stateCd=#{state}&parameterCd=00010&siteType=ST&siteStatus=active")['value']['timeSeries']
    response
  end
end
