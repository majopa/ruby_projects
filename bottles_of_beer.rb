# Author: Matthew Palomar
# Date: 9/17/15

# Description: Ask user for number_of_beers and sings a song.

# Example from Terminal: 'ruby bottles_of_beer.rb'
/
How many bottles of beer do you want to start with?
2
2 bottles of beer on the wall, 2 bottles of beer. Take one down, pass it around. 2 bottles of beer on the wall.
1 bottles of beer on the wall, 1 bottles of beer. Take one down, pass it around. 1 bottles of beer on the wall.
No more bottles of beer on the wall, no more bottles of beer. Go to the store and buy some more, 0 bottles of beer on the wall!
/

puts "How many bottles of beer do you want to start with?"
number_of_beers = gets.chomp.to_i

while (number_of_beers >= 0)
    if (number_of_beers >= 1)
        puts number_of_beers.to_s + " bottles of beer on the wall, " + number_of_beers.to_s + " bottles of beer. Take one down, pass it around. " + number_of_beers.to_s + " bottles of beer on the wall."
    elsif (number_of_beers == 0)
        puts "No more bottles of beer on the wall, no more bottles of beer. Go to the store and buy some more, " + number_of_beers.to_s + " bottles of beer on the wall!"
    end
    number_of_beers = number_of_beers - 1
end