# Author: Matthew Palomar
# Date: 9/17/15

# Description: A representation of a die.

# Example from Terminal: 'die.rb'
/
4
/

# Die Class / Object
class Die

    # Initialize new objects with a value
    def initialize
        roll
    end

    # roll Method / Mutator
    def roll
        @number_showing = 1 + rand(6)
    end

    # cheat Method / Mutator
    def cheat input
        @number_showing = input
    end

    # show_number Method / Accessor
    def show_number
        @number_showing
    end
end

# Creation of new Die object instance
die = Die.new

# Output
puts die.show_number