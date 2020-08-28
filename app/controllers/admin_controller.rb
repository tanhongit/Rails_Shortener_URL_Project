class AdminController < ApplicationController

    def index
        authorize! :manage, nil
    end

end
