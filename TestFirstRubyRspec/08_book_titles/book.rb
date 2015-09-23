# Author: Matthew Palomar
# Date: 9/22/15

# Desc: Stylizes book titles

class Book

    def title=(input)
    # Exception words to not capitalize
    exceptions = ['and', 'in', 'the', 'of', 'a', 'an']

    # Split input into array of words
    title_array = input.split(" ")

    # capitalize! the first letter in each word
    title_array.each do |word|
        # Unless that word exists exceptions
        unless exceptions.include?(word)
            word.capitalize!
        end
    end

    # capitalize! the first letter in the first word (overrides previous statement)
    title_array[0].capitalize!

    # Convert from Array to String
    @title = title_array.join(" ")
    end

    # Global attribute
    def title
        @title
    end

end