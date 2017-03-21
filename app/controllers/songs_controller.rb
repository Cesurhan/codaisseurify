class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
    @artist = Artist.find(params[:id])
  end

  def create
    @song = Song.new(song_params)
    if @song.save
      redirect_to artist_path(song_params[:artist_id]), notice: 'Song created'
    else
      render :new, notice: 'Please fill all the fields'
    end
  end

  def destroy
    @song = Song.find(params[:id])

    @song.destroy

    redirect_to artist_path(@song.artist_id), notice: 'Song deleted'
  end

  private

  def song_params
    params.require(:song).permit(:title, :artist_id)
  end
end
