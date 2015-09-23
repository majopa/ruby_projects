# Author: Matthew Palomar
# Date: 9/22/15

# Desc: Experimentation with how fast blocks take to execute when passed into a method

def measure(iterations = 1)
    time_elapsed = []

    iterations.times do
        @start = Time.now
        yield
        @stop = Time.now
        time_elapsed << (@stop - @start)
    end

    # reduce(:+) takes all elements in array, performs an operation, and keeps a running total
    time_elapsed.reduce(:+) / iterations.to_f
end