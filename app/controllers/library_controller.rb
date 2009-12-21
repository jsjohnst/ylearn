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
    @media = Media.find(params[:id], :include => :item)
    if(request.post?)
      @checkout = Checkout.new
      @checkout.media_id = @media
      @checkout.ip = request.remote_ip
      @checkout.save
      @media.checked_out = true
      @media.save
      redirect_to :controller => :download, :action => "get", :id => @media
    end
  end

  def return
  end
end
