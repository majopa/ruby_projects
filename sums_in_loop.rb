# Author:       Matthew Palomar
# Date:         11/13/15

# Description:  Given several pairs of values and we want to calculate sum for each pair.
#               http://www.codeabbey.com/index/task_view/sums-in-loop

# Example from Terminal: 'ruby sums_in_loop.rb'
/
data:
3
100 8
15 245
1945 54

answer:
108 260 1999
/

puts "data:"
sets = gets.chomp.to_i
result = Array.new(0)

while sets != 0 do
    input = gets.chomp.split(" ")
    result.push(input[0].to_i + input[1].to_i)
    sets -= 1
end

puts "\nanswer:"
result.each {|entry|
    print "#{entry} "
}