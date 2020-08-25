require 'rails_helper'

RSpec.describe LinksController, type: :controller do
    it "can shortena link provided by a user" do
        url = "https://www.favoritewebsite.com/articles/how-to-cook"
        headers = { "CONTENT_TYPE" => "text/javascript"}
        post :create, params: {link: {original_url: url}}, headers: headers
        link = assigns(:link)
        expect(link.original_url).to eq(url)
        expect(link.valid?).to be(true)   
        expect(link.lookup_code.length).to eq(7) 
        expect(response).to render_template('create') 
    end
end