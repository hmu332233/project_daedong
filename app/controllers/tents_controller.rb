class TentsController < ApplicationController
  def index
    
    @tents = Tent.all
    
  end

  def create
    
    _name = params[:name]
    _location = params[:location]
    _content = params[:content]
    _menu_content = params[:menu_content]
    
    @tent = Tent.create(name: _name,location: _location, content: _content,menu_content: _menu_content)
    
    image = params[:image]
    uploader = ImageUploader.new
    
    unless image.nil?
      
      uploader.store!(image)
      
      @tent.pic_url = uploader.url
      @tent.save
    
    end
  
    redirect_to "/tents/index"
  end

  def update
    
    @tent = Tent.find(params[:id])
   
    _name = params[:name]
    _location = params[:location]
    _content = params[:content]
    _menu_content = params[:menu_content]
    
    @tent.update(name: _name,location: _location, content: _content,menu_content: _menu_content)
    
    image = params[:image]
    uploader = ImageUploader.new
    
    unless image.nil?
      
      uploader.store!(image)
      
      @tent.pic_url = uploader.url
      @tent.save
    
    end

    redirect_to "/tents/index"    
  end

  def delete
    
    tent = Tent.find(params[:id])
    tent.delete
    
    redirect_to "/tents/index"
    
  end

  def new
  end

  def edit
    
    @tent = Tent.find(params[:id])
    
  end
  
  
  # /tents/:id/like
  def like
    
    tent = Tent.find(params[:id])
    tent.likes += 1
    tent.save
    
    render json: {likes: tent.likes}
  end
  
end
