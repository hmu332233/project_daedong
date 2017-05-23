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
    
    render json: {content: @tent.content, time: @tent.created_at.strftime("%d일 %T")}
  end

  def delete
    
    review = Review.find(params[:id])
    review.delete
    
  end
end
