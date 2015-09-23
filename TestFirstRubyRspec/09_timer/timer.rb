# Author: Matthew Palomar
# Date: 9/22/15

# Desc: Stylizes book titles

class Timer

    # Global attribute
    def seconds
        @seconds
    end

    # Initialize the seconds global attribute
    def initialize
        @seconds = 0
    end

    def seconds=(seconds)
        @seconds = seconds
    end

    def padded(input)
        ((input < 10) ? ("0" + input.to_s) : (input.to_s))
    end

    # Display information
    def time_string
        padded(@seconds/3600) + ":" + padded((@seconds/60)%60) + ":" + padded(seconds%60)
    end

end