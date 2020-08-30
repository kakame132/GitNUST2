class AlbumsController < ApplicationController
  def edit
    @album=Album.find(params[:id])
    render 'edit_album_title'
  end
  def update
    @album=Album.find(params[:id])
    @title=params.require(:album).permit(:title)
    @album.update(title: @title["title"])
    render 'edit_album_title'
  end
end
