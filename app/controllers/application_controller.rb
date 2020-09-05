class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    
    rescue_from CanCan::AccessDenied do |exception|
        render :file => "static/403.html", :status => 403, :layout => false
    end

    def current_ability
        @current_ability ||= Ability.new(current_user)
    end
end
