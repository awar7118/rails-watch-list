class BookmarksController < ApplicationController

  def new
    @bookmark = Bookmark.new
    @list = List.find(params[:list_id])
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.save
    redirect_to list_bookmarks_path
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:comment)
  end
end
