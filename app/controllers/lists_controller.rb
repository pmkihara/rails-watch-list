class ListsController < ApplicationController
  before_action :set_list, only: %i[show edit update destroy]

  def index
    @lists = List.all
    @list = List.new
  end

  def show
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)

    if @list.save
      redirect_to @list
    else
      render :new, status: :unprocessable_entity # assures the modal doesn't close after submit
    end
  end

  def edit; end

  def update
    if @list.update(list_params)
      redirect_to @list
    else
      render :new, status: :unprocessable_entity # assures the modal doesn't close after submit
    end
  end

  def destroy
    @list.destroy
    redirect_to lists_path
  end

  private

  def set_list
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:name)
  end
end
