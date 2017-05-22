class PageController < ApplicationController
  def index
    @tents = Tent.all
    
    @lanks = Tent.order(likes: :desc).limit(5)
    
    @reviews = Review.order(id: :desc).limit(5)
    
    ap @reviews
  end
end
