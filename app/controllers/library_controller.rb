class LibraryController < ApplicationController
  def index
  end

  def list
    @items = Item.find(:all, :conditions => { :available => true }) 
  end

  def detail
    @item = Item.find(params[:id])
#    if(@item.nil?)
#      flash[:notice] = 'Invalid or unknown library item.'
#      redirect_to(:index)
#    end
  end

  def checkout
  end

  def return
  end
end
