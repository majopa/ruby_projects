# Author: Matthew Palomar
# Date: 11/6/15

# Description: Append 'not' to a string if it doesn't start with 'not'
# Example from Terminal: 'ruby not_string.rb'

def not_string(string)
    string_array = string.split(" ")

    if string_array[0] != "not"
        string_array.insert(0, "not")
        puts string_array.join(" ")
    else
        puts string_array.join(" ")
    end
end

not_string("Hi, this is a string")
not_string("not a string here")
not_string("nothing strange about this one")