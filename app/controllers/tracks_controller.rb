class TracksController < ApplicationController

  def index
    @tracks = Track.all.includes(:album, album: :artist)
                   .filter(params['name'])
  end

  def show
    @track = Track.find(params[:id])
  end

  def new
    @track = Track.new
    @media_types = MediaType.all
    @albums = Album.all
    @genres = Genre.all
  end

  def create
    @albums = Album.all
    @track = Track.new(track_params)
    @media_types = MediaType.all
    @genres = Genre.all
    if @track.save
      redirect_to @track
    else
      render :new
    end
  end

  def edit
    @albums = Album.all
    @track = Track.find(params[:id])
    @media_types = MediaType.all
    @genres = Genre.all
  end

  def update
    @albums = Album.all
    @track = Track.find(params[:id])
    @media_types = MediaType.all
    @genres = Genre.all
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
