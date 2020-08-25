require 'digest/sha2'

class Shortener

    attr_reader :url, :link_model

    def initialize(url, link_model = Link)
        @url = url
        @link_model = link_model
    end

    def generate_short_link
        # Link.create!(original_url: url) //run tesst rspec: fail
        link_model.create(original_url: url, lookup_code: lookup_code)
    end

    def lookup_code
        # string = ''
        # 7.times do |n|
        #     string << (rand * n).round
        # end
        # string

        # 1. get a lookup code
        # 2. check if it already exists
        # 3. break out of the loop if it does not exists
        # 4. if not, get anoder code
        i = 0
        loop do
            # 1. get a lookup code
            # # way 1
            # code = Digest::SHA256.hexdigest(url)[i...(i+7)]

            # # way 2
            # code = Digest::SHA256.hexdigest(url)[i..(i+6)]

            # # way 3: re-establish
            code = get_fresh_code(i)
            
            # 2,3,4. check if it already exists
            # # way 1
            # if link_model.exists?(lookup_code: code)
            # else
            #     break code
            # end

            # # way 2
            break code unless link_model.exists?(lookup_code: code)
            # if use i++    -> bug
            i = i + 1
        end
    end

    private

    def get_fresh_code(iterator)
        Digest::SHA256.hexdigest(url)[iterator..(iterator+6)]
    end    
end