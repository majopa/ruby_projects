# Author:       Matthew Palomar
# Date:         11/13/15

# Description:  Of two numbers, please, select one with minimum value.
#               http://www.codeabbey.com/index/task_view/min-of-two

# Example from Terminal: 'ruby minimum_of_two.rb'
/
data:
3
5 3
2 8
100 15

answer:
3 2 15
/

puts "data:"
sets = gets.chomp.to_i
result = Array.new(0)

while sets != 0 do
    input = gets.chomp.split(" ")
    if input[0].to_i < input[1].to_i
        result.push(input[0])
    elsif input[1].to_i < input[0].to_i
        result.push(input[1])
    end
    sets -= 1
end

puts "\nanswer:"
result.each { |entry|
    print "#{entry} "
}