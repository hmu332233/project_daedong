class PageController < ApplicationController
  def index
    @tents = Tent.all
    @ordered_tents = Tent.order(likes: :desc)
    
    @lanks = Tent.order(likes: :desc).limit(5)
    
    @reviews = Review.order(id: :desc).limit(5)

  end
end
