class AlbumsController < ApplicationController

  def index
      @albums = Album.filter(params['title'])
  end

  def show
      @album = Album.where(params[:id])
  end

  def new
    @artists = Artist.all
    @album = Album.new
  end

  def create
      @artists = Artist.all
      @album = Album.new(album_params)
      if @album.save
          redirect_to @album
      else
          render :new
      end
  end

  def edit
    @artists = Artist.all
    @album = Album.find(params[:id])
  end

  def update

    @artists = Artist.all
    @album = Album.find(params[:id])

    if @album.update_attributes(album_params)
      redirect_to @album
    else
      render :edit
    end

  end

  private

    def album_params
      params.require(:album).permit(:title, :artist_id)
    end

  end
