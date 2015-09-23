# Author: Matthew Palomar
# Date: 9/21/15

# Desc: Simple Calculator program with rspec Specifications

# Adds x and y together
def add(x,y)
    x + y
end

# Subtracts y from x
def subtract(x,y)
    x - y
end

# Summation of array of n integers
def sum(numbers)
    # Using inject
    # numbers.inject(0){|sum, number| sum + number}

    # Old Fashioned Way
    sum = 0
    numbers.each do |number|
        sum += number
    end
    sum
end

# Product of n integers
def multiply(numbers)
    # Using inject
    # numbers.inject{|product, number| product * number}

    # Old Fashioned Way
    product = 1
    numbers.each do |number|
        product *= number
    end
    product
end

# Raise x to the yth power
def power(x,y)
    x ** y
end

# n factorial
def factorial(number)
    if number == 0
        0
    elsif(number == 1)
        number = 1
    else
        number * factorial(number - 1)
    end
end

