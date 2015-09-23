# Author: Matthew Palomar
# Date: 9/22/15

# Desc: Simple simon says program

# Echo method repeats input verbatim
def echo(input)
    "#{input}"
end

# Shout method repeats input in uppercase
def shout(input)
    "#{input.upcase}"
end

# Repeat method repeats the input n times separated by a space
def repeat(input, iterations = 0)
    if (iterations <= 2)
        "#{input}" + " " + "#{input}"
    else
        "#{input} " * (iterations - 1) + "#{input}"
    end
end

# Start_of_word method returns n letters of input
def start_of_word(input, letter_count)
    # Create new word using indexes of orginal
    input[0..(letter_count-1)]
end

# Start_of_word method returns the first word of input
def first_word(input)
    # Split string into array of words and select first entry
    input.split(" ")[0]
end

# Titleize method
def titleize(input)
    # Words to not capitalize!
    exceptions = ["and", "the", "over"]

    # Split string into array of words
    title = input.split(" ")

    # capitalize! the first letter in each word unless word is in exceptions
    title.each { |word|
        word.capitalize! unless exceptions.include?(word)
    }

    # capitalize! the first letter in the first word (overrides previous statement)
    title[0].capitalize!

    # Assemble array of words back into a string
    title.join(" ")
end