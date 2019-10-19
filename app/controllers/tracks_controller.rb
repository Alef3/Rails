class TracksController < ApplicationController
  def index
      @consulta = Track.all
  end
end
