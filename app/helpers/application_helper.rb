module ApplicationHelper
    def active(path)
        current_page?(path) ? 'active' : ''
    end

    def active_admin(path)
        current_page?(path) ? 'active btn btn-primary' : 'btn btn-light'
    end
end
