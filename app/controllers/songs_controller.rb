class SongsController < ApplicationController
  before_action :set_artist, only: [:index, :create, :destroy]

  def index
    @songs = @artist.songs
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
  end

  def create
    @song = @artist.songs.new(song_params)

    if @song.save
       redirect_to @artist, notice: "Song Added!"
    else
       redirect_to @artist, alert: "Song field can't be blank"
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @song = @artist.songs.find(params[:id])
    if @song.destroy
      redirect_to @artist, notice: "Song deleted!"
    else
      redirect_to @artist, alert: "Song couldn't be deleted"
    end
  end

  private

  def set_artist
    @artist = Artist.find(params[:artist_id])
  end

  def song_params
    params.require(:song).permit(:title, :artist_id)
  end
end
