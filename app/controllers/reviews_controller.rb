class ReviewsController < ApplicationController
  before_action :set_list, only: %i[create]
  def create
    @review = Review.new(review_params)
    @review.list = @list
    if @review.save
      redirect_to @list
    else
      render 'lists/show'
    end
  end

  private

  def set_list
    @list = List.find(params[:list_id])
  end

  def review_params
    params.require(:review).permit(:author, :comment, :rating)
  end
end
