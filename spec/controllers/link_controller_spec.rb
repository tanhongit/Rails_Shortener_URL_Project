require 'rails_helper'

RSpec.describe LinkController, type: :controller do
    it "can shortena link provided by a user" do
        url = "https://www.favoritewebsite.com/articles/how-to-cook"
        post "/links", params: {link: {original_url: url}}
    end
end