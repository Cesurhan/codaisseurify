class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
  end

  def create
    song_params = params.require(:song).permit(:title, :album, :release_date, :award)

    @song = Song.new(song_params)

    if @song.save
      redirect_to @song, notice: 'Song successfully created'
    else
      render :new, notice: 'Please fill all the fields'
    end
  end
end
