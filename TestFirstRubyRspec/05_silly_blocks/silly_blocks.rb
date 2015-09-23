# Author: Matthew Palomar
# Date: 9/22/15

# Desc: Experimentation with passing blocks into methods

# Method for returning a string in reverse
# Called using: reverser{string_to_reverse}
# Example: reverser{"test this out!"} => "tset siht !tuo"
def reverser
    yield.split(' ').map{|word| word.reverse}.join(' ')
end

# Method for adding 1 to the value passed in
# Called using: adder(increase_by_value){value_to_increase}
# Example: adder(3){5} => 8
def adder(increment = 1)
    yield + increment
end

# Method for calling the default block (n = iterations) times
# Called using: repeater(iteration_amount){code_to_repeat}
# Example: n=0
#          repeater(2){n+=1} => 2
def repeater(iterations = 1)
    iterations.times {yield}
end