class TentsController < ApplicationController
  def index
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
    
  end
  
end
