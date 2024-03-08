class BookmarksController < ApplicationController

  def new
    @list = List.find(params[:list_id])
    @bookmark = @list.bookmarks
  end

  def create
    @list = List.find(params[:list_id])
    @bookmark = @list.bookmarks(bookmark_params)
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:movie_id, :comment)
  end

end
