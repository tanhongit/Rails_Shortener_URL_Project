class Shortener
    def initialize(url)
    end

    def lookup_code
        string = ''
        7.times do |n|
            string << (rand * n).round
        end
        string
    end
end