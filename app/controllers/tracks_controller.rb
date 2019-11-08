class TracksController < ApplicationController
  def index
    @tracks = Track.filter(params['name'])
  end

  def show
    @track = Track.find(params[:id])
    @tracks = Track.where(artist: @artist_id)
  end

  def new
    @track = Track.new
  end

  def create
    @track = Track.new(track_params)
    if @track.save
      redirect_to @track
    else
      render :new
    end
  end

  def edit
    @track = Track.find(params[:id])
  end

  def update
    @track = Track.find(params[:id])
    if @track.update_attributes(track_params)
       redirect_to @track
    else
       render :edit
    end
  end

  private

  def track_params
    params.require(:track).permit(:name, :album_id, :media_type_id, :genre_id, :composer, :milliseconds, :bytes, :unit_price)
  end
end
