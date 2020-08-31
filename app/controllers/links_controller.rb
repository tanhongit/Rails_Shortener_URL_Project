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

    def show
        link = Link.find_by(lookup_code: params[:lookup_code])
        redirect_to link.original_url
    end

    def alllinks
        authorize! :manage, nil
        @links = Link.ordered
    end

    private

    def links_params
        params.require(:link).permit(:original_url)
    end
end
