class Link < ApplicationRecord
    validates_presence_of :lookup_code, :original_url
    validates_uniqueness_of :lookup_code
    validate  :original_url_format

    def original_url_format
        # begin
        #     uri = URI.parse(original_url || "")
        #     if uri.host.nil?
        #         errors.add(:original_url, "Invalid URL Format")
        #     end
        # rescue URI::InvalidURIError => e
        # end

        uri = URI.parse(original_url || "")
        if uri.host.nil?
            errors.add(:original_url, "Invalid URL Format")
        end
    end

    def shortened_url
        "https://shortener-rails.herokuapp.com/#{lookup_code}"
    end
end
