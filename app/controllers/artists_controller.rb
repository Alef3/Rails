class ArtistsController < ApplicationController
  def index
      @consulta = Artist.all
  end
end
