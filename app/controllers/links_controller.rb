class LinksController < ApplicationController
    def create 
        # original_url = params[:link][:original_url]
        shortener = Shortener.new(links_params[:original_url])
        @link = shortener.generate_short_link
    end

    private

    def links_params
        params.require(:link).permit(:original_url)
    end
end
