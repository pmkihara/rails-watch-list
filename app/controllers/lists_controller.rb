class ListsController < ApplicationController
  before_action :set_list, only: %i[show]

  def index
    @lists = List.all
    @list = List.new
  end

  def show
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to @list
    else
      @lists = List.all
      render :index
    end
  end

  private

  def set_list
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:name)
  end
end
