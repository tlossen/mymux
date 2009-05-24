class ItemsController < ApplicationController
  
  def index
    @tenant = params[:tenant]
    @items = Item.all
  end
  
end
