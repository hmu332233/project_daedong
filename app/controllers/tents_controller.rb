class TentsController < ApplicationController
  def index
    
    @tents = Tent.all
    
  end

  def create
  end

  def update
  end

  def delete
  end

  def new
  end

  def edit
  end
  
  
  # /tents/:id/like
  def like
    
    tent = Tent.find(params[:id])
    tent.likes += 1
    tent.save
    
    render json: {likes: tent.likes}
  end
  
end
