class WatersController < ApplicationController

  def index
    @state = params[:state] || 'nc'
    @data_point_string = params[:data_point_string] || '00010'
    @site_type = params[:site_type] || 'ST'
    @sites = Water.for(@state, @data_point_string, @site_type)
  end

end
