class ListsController < ApplicationController

  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    @list.save
    redirect_to @list
  end

  def show
    @list = List.find(params[:id])
    @bookmark = Bookmark.new
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end

  def show_details
   @list = List.find(params[:id])
  end

end
