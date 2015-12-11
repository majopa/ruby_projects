# Author: Matthew Palomar
# Date: 11/5/15

# Description: Find the sum of all the multiples of 3 or 5 below an input number
#              https://projecteuler.net/problem=1

# Example from Terminal: 'ruby three_and_five.rb'
/
range: 10
sum: 23
/

print "range: "
num = gets.chomp.to_i

range_array = Array(1...num)
sum_array = Array.new

range_array.each do |x|
    if x % 5 == 0 || x % 3 == 0
        sum_array.push(x)
    end
end

sum = 0
sum_array.each do |x|
    sum += x
end

print "sum: #{sum}"