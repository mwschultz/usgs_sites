class WatersController < ApplicationController

  def index
    @search_term = params[:search] || 'nc'
    @sites = Water.for(@search_term)
  end

end
