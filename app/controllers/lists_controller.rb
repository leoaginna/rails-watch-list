class ListsController < ApplicationController

  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def create
    # @list = list.new(params[:list]) //not secure!
    @list = List.new(list_params)
    @list.save
    redirect_to list_path(@list)
  end

end

private

def list_params
  params.require(:list).permit(:name)
end