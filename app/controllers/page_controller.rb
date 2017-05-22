class PageController < ApplicationController
  def index
    @tents = Tent.all
  end
end
