class LinksController < ApplicationController
    def create 
        # original_url = params[:link][:original_url]
        shortener = Shortener.new(links_params[:original_url])
        @link = shortener.generate_short_link
        # # check info create link
        # binding.pry

        if @link.persisted?
            respond_to :js
        else
            render 'error.js.erb'
        end
    end

    private

    def links_params
        params.require(:link).permit(:original_url)
    end
end
