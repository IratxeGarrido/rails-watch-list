class ReviewsController < ApplicationController
  before_action :set_list, only: %i[create]

  # def new
  #   @review = Review.new
  #   @list = List.find(params[:list_id])
  # end

  def create
    @review = Review.new(review_params)
    # @list = List.find(params[:list_id])
    @review.list_id = @list.id
    if @review.save
      redirect_to list_path(@list)
    else
      render "lists/show", status: :unprocessable_entity
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @list_id = @review.list

    @review.destroy
    redirect_to list_path(@list_id)
  end

  private

  def set_list
    @list = List.find(params[:list_id])
  end

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
