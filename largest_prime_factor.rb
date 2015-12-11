# Author: Matthew Palomar
# Date: 11/6/15

# Description: What is the largest prime factor of a number

# Example from Terminal: 'ruby largest_prime_factor.rb'

/
Enter number: 600851475143
Largest Factor: 6857
/

require 'prime'

print "Enter number: "
input = gets.chomp.to_i

print "Largest Factor: "
puts input.prime_division.last[0]