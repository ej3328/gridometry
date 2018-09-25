class SitesController < ApplicationController

  def new 
    @site = Site.new 
  end 


  def create
      @site = Site.new(site_params)
      
      if @site.save
          flash[:success] = "Thank you, we'll contact you soon!"
      render 'index'
      else
        render 'new'
      end
  end


  private
    def site_params
      params.require(:site).permit(:firstName, :lastName, :phone, :email, :message)
    end
end