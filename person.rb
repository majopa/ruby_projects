# Author: Matthew Palomar
# Date: 9/17/15

# Description: Ask user for :name and :favorite_number, repeats that information
#              and gives the length of :name.

# Example from Terminal: 'ruby person.rb'
/
Hello, what is your full name?
Matthew
What is your favorite number?
35
Hi Matthew, I'm the computer!
The number 35 is a decent one.
Did you know there is 7 characters in 'Matthew'?
/

# Definition of the Person object
class Person
  # Defines attributes of Person
  attr_accessor :name, :favorite_number

  # Defines introduction Method
  def introduction(target)
    puts "Hi #{name}, I'm the #{target}!"
  end
end

# Creation of new Person object instance
user = Person.new

# Prompt user for value to store in :name
puts "Hello, what is your full name?"
user.name = gets.chomp

# Prompt user for value to store in :favorite_number
puts "What is your favorite number?"
user.favorite_number = gets.chomp

# Display information: :name, :favorite_number, and the length of :name
user.introduction("computer")
puts "The number " + user.favorite_number + " is a decent one."
puts "Did you know there is " + user.name.length.to_s + " characters in \'" + user.name + "\'?"