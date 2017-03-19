class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
    @photos = Photo.all
  end

  def show
    @artist = Artist.find(params[:id])
    @photos = Photo.all
  end
end
