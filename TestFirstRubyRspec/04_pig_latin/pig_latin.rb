# Author: Matthew Palomar
# Date: 9/22/15

# Desc: Translate English to Pig Latin

# Splits up a sentence into an array and calls translate_word on each element
def translate(input)
    input.split(' ').map{|word| translate_word(word)}.join(' ')
end

# Method for translating a word from English to Pig Latin
def translate_word(input)
    # Exception letters
    vowels = ['a','e','i','o','u']

    # Split word into characters
    word = input.split('')

    # First letter is a vowel
    if vowels.include?(word[0])
        word.push('ay')

    # First letter consonant followed by 'qu'
    elsif (vowels.include?(word[0]) == false && word[1] == 'q' && word[2] == 'u')
        word.push(word[0] + word[1] + word[2] + 'ay')
        for i in 1..3
            word.delete_at(0)
        end

    # First two letters are 'qu'
    elsif (word[0] == 'q' && word[1] == 'u')
        word.push(word[0] + word [1] + 'ay')
        for i in 1..2
            word.delete_at(0)
        end

    # First two letters are consonants
    elsif (vowels.include?(word[0]) == false && vowels.include?(word[1]) == false && vowels.include?(word[2]) == true)
        word.push(word[0] + word[1] + 'ay')
        for i in 1..2
            word.delete_at(0)
        end

    # First three letters are consonants
    elsif (vowels.include?(word[0]) == false && vowels.include?(word[1]) == false && vowels.include?(word[2]) == false)
        word.push(word[0] + word[1] + word[2] + 'ay')
        for i in 1..3
            word.delete_at(0)
        end

    # First letter is a consonant
    else
        word.push(word[0] + 'ay')
        word.delete_at(0)
    end

    # Reassemble array into word
    word.join('')
end