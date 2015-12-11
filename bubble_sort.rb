# Author:       Matthew Palomar
# Date:         11/14/15

# Description:  Build a method #bubble_sort that takes an array and returns a sorted array.
#               It must use the bubble sort methodology (using #sort would be pretty pointless, wouldn't it?)
#               http://www.theodinproject.com/ruby-programming/advanced-building-blocks?ref=lnav

# Example from Terminal: 'ruby bubble_sort.rb'
/
[0, 2, 2, 3, 4, 78]
/

def bubble_sort(array)
    continue = true
    while continue
        continue = false
        for i in 1...array.length
            if array[i] < array[i-1]
                array[i], array[i-1] = array[i-1], array[i]
                continue = true
            end
        end
    end
    print array
end

bubble_sort([4,3,78,2,0,2])