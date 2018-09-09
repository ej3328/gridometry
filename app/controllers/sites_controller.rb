class SitesController < ApplicationController
	def new 
		@site = Main.new
	end	


	def create
	    @site = Main.new(site_params)
	    
	    if @site.save
	        flash[:success] = "Thank you, we'll contact you soon!"
			render 'index'
	    else
	      render 'new'
	    end
	end


	private
		def site_params
			params.require(:site).permit(:first_name, :last_name, :phone, :email, :message)
		end
end
