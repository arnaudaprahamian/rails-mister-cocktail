class ReviewsController < ApplicationController
  before_action :find_cocktail, only: [:create]

  def create
    # @review = Review.new(review_params)
    # @review.cocktail = @cocktail
    @review = @cocktail.reviews.new(review_params)
    if @review.save
      redirect_to cocktail_path(@cocktail)
    else
      render "cocktails/show"
    end
  end

private

  def find_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def review_params
    params.require(:review).permit(:title, :content, :author)
  end
end
