# Author: Matthew Palomar
# Date: 11/11/15

# Description: Implement a method #stock_picker that takes in an array of stock prices,
#              one for each hypothetical day.
#              It should return a pair of days representing the best day to buy and the best day to sell.
#              Days start at 0.
#              http://www.theodinproject.com/ruby-programming/building-blocks?ref=lnav

# Example from Terminal: 'ruby stock_picker.rb'

/
    [17, 3, 6, 9, 15, 8, 6, 1, 10]
    [1, 4]
    [9, 8, 7, 6, 5, 4, 3, 2, 1]
    [4, 5]
/

def stock_picker(array)
    @array = array
    min_to_max = array.sort                                             # sort array from min to max
    max_to_min = array.sort.reverse                                     # sort array from max to min
    index = 0

    while index < array.length
        min = min_to_max[index]                                         # first min value
        max = max_to_min[index]                                         # first max value

        if array.index(min) < array.index(max)                          # compare first min index to first max index
            return [array.index(min), array.index(max)]
        else
            next_min = min_to_max[index + 1]                            # next value in min_to_max array
            next_max = max_to_min[index + 1]                            # next value in max_to_min array

            if (max - next_min) > (next_max - min)                      # compare (max - next_min) and (next_max - min)
                if array.index(next_min) < array.index(max)             # compare next_min index to max index
                    return [array.index(next_min), array.index(max)]
                end
            else

                if array.index(min) < array.index(next_max)             # compare next min index to next max index
                    return [array.index(min), array.index(next_max)]
                end
            end
        end

        index += 1                                                      # move index up by 1 position

    end
end

print [17,3,6,9,15,8,6,1,10]
puts
print stock_picker([17,3,6,9,15,8,6,1,10])
puts
print [9,8,7,6,5,4,3,2,1]
puts
print stock_picker([9,8,7,6,5,4,3,2,1])
