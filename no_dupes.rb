# Author: Matthew Palomar
# Date: 11/6/15

# Description: Remove duplicate entries from an array and return the array

# Example from Terminal: 'ruby no_dupes.rb'

def no_dupes(array)

    hash = Hash.new(0)
    array.each do |number|
        hash[number]+=1
    end

    array = Array.new
    hash.each do |number, count|
        array.push(number)
    end

    print array

end

no_dupes( [ 1, 4, 2, 7, 3, 1, 2, 8 ] )
no_dupes( [ 100, 32, 44, 44, 23, 32, 44 ] )