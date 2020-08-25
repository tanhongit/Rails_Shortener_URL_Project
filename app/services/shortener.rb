require 'digest/sha2'

class Shortener

    attr_reader :url

    def initialize(url)
        @url = url
    end

    def generate_short_link
        # Link.create!(original_url: url) //run tesst rspec: fail
        Link.create(original_url: url, lookup_code: lookup_code)
    end

    def lookup_code
        # string = ''
        # 7.times do |n|
        #     string << (rand * n).round
        # end
        # string

        Digest::SHA256.hexdigest(url)[0...7]
    end
end