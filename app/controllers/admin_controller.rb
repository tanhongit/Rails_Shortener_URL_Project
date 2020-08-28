class AdminController < ApplicationController
    def index
        @users = User.ordered
    end

    def allusers
        @users = User.all
    end
end
