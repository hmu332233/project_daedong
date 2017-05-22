class ReviewsController < ApplicationController
  def index
  end

  def new
    
    @post_id = params[:id]
    
  end

  def create
    
    _content = params[:content]
    _tent_id = params[:id]
    
    @tent = Review.create(content: _content,tent_id: _tent_id)
  
    redirect_to "/tents/index"
    
  end

  def delete
    
    review = Review.find(params[:id])
    review.delete
    
    redirect_to "/tents/index"
  end
end
