# Author: Matthew Palomar
# Date: 11/12/15

# Description: Implement a method #substrings that takes a word as the first argument and then an array of valid substrings
#              (your dictionary) as the second argument. It should return a hash listing each substring (case insensitive)
#              that was found in the original string and how many times it was found. Make sure your method can handle multiple words.
#              http://www.theodinproject.com/ruby-programming/building-blocks?ref=lnav

# Example from Terminal: 'ruby substrings.rb'

/
  {"below"=>1, "low"=>1}
/

def substrings(search_criteria_array, dictionary)

    @search_criteria_array = search_criteria_array.downcase.split(/[^\w]+/)     # words/substrings to search for formatted into an Array
    @dictionary = dictionary                                                    # what to search through for matches of words/substrings
    word_count = Hash.new(0)                                                    # empty hash to store count of words/substrings instances

    if @dictionary.is_a?(String) {                                              # test if @dictionary is a String or an Array
        @dictionary_array = @dictionary.downcase.split(/[^\w]+/)                # if String, split it and store result in @dictionary_array
    }
    else
        @dictionary_array = @dictionary                                         # else assume it's already formatted as an Array
    end

    @search_criteria_array.each { |current_word|                                # loop through each word in the search_criteria_array
        @dictionary_array.each { |substring|                                    # loop through each word in the dictionary_array
            if current_word[substring]                                          # if any dictionary_array elements = search_criteria_array elements
                word_count[substring] +=1                                       # add them to the word_count Hash
            end
        }
    }

    print word_count                                                            # print word_count Hash

end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("below", dictionary)