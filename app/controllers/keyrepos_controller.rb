class KeyreposController < ApplicationController
  def index
    render :json => Keyrepo.all 
  end

  def show 
    render :json => Keyrepo.find(params[:id]) 
  end
   
  def create
    keyrepo = Keyrepo.create!(params)
    render :json => keyrepo
  end
  
  
  def update
    keyrepo = Keyrepo.find(params[:id])
    keyrepo.update_attributes!(params)
    render :json => keyrepo   
  end
     
end
