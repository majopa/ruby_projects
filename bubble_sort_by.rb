# Author:       Matthew Palomar
# Date:         11/14/15

# Description:  create a similar method called #bubble_sort_by which sorts an array but accepts a block.
#               The block should take two arguments which represent the two elements currently being compared.
#               Expect that the block's return will be similar to the spaceship operator you learned about
#               before -- if the result of the block is negative, the element on the left is "smaller" than the
#               element on the right. 0 means they are equal. A positive result means the left element is greater.
#               Use this to sort your array.
#               http://www.theodinproject.com/ruby-programming/advanced-building-blocks?ref=lnav

# Example from Terminal: 'ruby bubble_sort_by.rb'
/
["hi", "hey", "hello"]
/

def bubble_sort_by(array)
    continue = true
    while continue
        continue = false
        for i in 1...array.length
            if yield(array[i], array[i-1]) < 0
                array[i], array[i-1] = array[i-1], array[i]
                continue = true
            end
        end
    end
    print array
end

bubble_sort_by(["hi","hello","hey"]) {|left,right| left.length - right.length}