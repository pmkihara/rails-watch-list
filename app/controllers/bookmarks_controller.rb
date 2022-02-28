class BookmarksController < ApplicationController
  before_action :set_list, only: %i[new create]
  before_action :set_bookmark, only: %i[edit update destroy details]

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.list = @list
    if @bookmark.save
      respond_to do |format|
        format.html { redirect_to list_path(@list) }
        format.turbo_stream do
          render turbo_stream: turbo_stream.append('movie-cards', partial: 'lists/bookmark', locals: { bookmark: @bookmark })
        end
      end
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    list = @bookmark.list
    @bookmark.destroy
    redirect_to list_path(list)
  end

  def details; end

  def edit; end

  def update
    if @bookmark.update(bookmark_params)
      respond_to do |format|
        format.html { redirect_to @bookmark.list }
        format.turbo_stream do
          render turbo_stream: turbo_stream.replace('modal', template: 'bookmarks/details')
        end
      end
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def set_list
    @list = List.find(params[:list_id])
  end

  def set_bookmark
    @bookmark = Bookmark.find(params[:id])
  end

  def bookmark_params
    params.require(:bookmark).permit(:movie_id, :comment, :personal_rating)
  end
end
