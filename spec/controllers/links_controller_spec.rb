require 'rails_helper'

RSpec.describe LinksController, type: :controller do
    it "can shorten link provided by a user" do
        request.env["HTTP_ACCEPT"] = "text/javascript"

        url = "https://tanhongit.com/"
        post :create, params: {link: {original_url: url}}
        link = assigns(:link)
        expect(link.original_url).to eq(url)
        expect(link.valid?).to be(true)   
        expect(link.lookup_code.length).to eq(7) 

        # here link dot persisted
        expect(link.persisted?).to be(true) 

        expect(response).to render_template('create') 
    end
end