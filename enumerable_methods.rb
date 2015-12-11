# Author:       Matthew Palomar
# Date:         11/15/15

# Description:  Create a script file to house your methods and run it in IRB to test them later.
#               Create #my_each, a method that is identical to #each but (obviously) does not use #each.
#               You'll need to remember the yield statement. Make sure it returns the same thing as #each as well.
#
#               Create #my_each_with_index in the same way.
#               Create #my_select in the same way, though you may use #my_each in your definition (but not #each).
#               Create #my_all? (continue as above)
#               Create #my_any?
#               Create #my_none?
#               Create #my_count
#               Create #my_map
#               Create #my_inject
#
#               Test your #my_inject by creating a method called #multiply_els which multiplies all the elements of
#               the array together by using #my_inject, e.g. multiply_els([2,4,5]) #=> 40
#               Modify your #my_map method to take a proc instead.
#               Modify your #my_map method to take either a proc or a block, executing the block only if both are supplied
#               (in which case it would execute both the block AND the proc).
#
#               http://www.theodinproject.com/ruby-programming/advanced-building-blocks?ref=lnav
#
#               Example from Terminal: 'irb'
/
                load 'enumerable_methods.rb'
                => true

                [1,2,3,4,5].my_each{|number| print number}
                12345 => [1, 2, 3, 4, 5]

                [1,2,3,4,5].my_each_with_index{|number,index| puts "#{index}: #{number}"}
                0: 1
                1: 2
                2: 3
                3: 4
                4: 5
                => [1, 2, 3, 4, 5]

                [1,2,3,4,5].my_select{|number| number%2==0}
                => [2, 4]

                [1,2,3,4,5].my_all?{|number| number%2==0}
                => false
                [2,4,6].my_all?{|number| number%2==0}
                => true

                [1,3,9].my_any?{|number| number%2==0}
                => false
                [1,4,9].my_any?{|number| number%2==0}
                => true

                [1,3,9].my_none?{|number| number%2==0}
                => true
                [1,4,9].my_none?{|number| number%2==0}
                => false

                [1,4,9].my_count(7)
                => 0
                [1,4,9].my_count(4)
                => 1
                [1,4,9,9].my_count(9)
                => 2

                [1,2,3,4,5].my_map{|number| number*2}
                => [2, 4, 6, 8, 10]

                [1,2,3,4,5].my_inject{|result, number| number + result}
                => 15

                [1,2,3,4,5].multiply_els
                => 120
/

module Enumerable

    def my_each                                                     # My version of the EACH method
        for index in 0...self.length                                # Iterate through each element of the calling Object (hopefully an Array)
            yield(self[index])                                      #   Pass self[index] to input Block
        end
        self                                                        # Return original Array
    end

    def my_each_with_index                                          # My version of the EACH_WITH_INDEX method
        for index in 0...self.length                                # Iterate through each element of the calling Object (hopefully an Array)
            yield(self[index], index)                               #   Pass self[index] and index to input Block
        end
        self                                                        # Return original Array
    end

    def my_select                                                   # My version of the SELECT method
        result_array  = []                                          # Create empty Array for results
        for index in 0...self.length                                # Iterate through each element of the calling Object (hopefully an Array)
            result_array << self[index] if yield(self[index])       #   Push self[index] to result_array if it satisfies input block
        end
        result_array                                                # Return new Array result_array
    end

    def my_all?                                                     # My version of the ALL method
        for index in 0...self.length                                # Iterate through each element of the calling Object (hopefully an Array)
            return false unless yield(self[index])                  #   Return False if ANY self[index] elements do not satisfy input block
        end
        true                                                        # Return True if ALL self[index] elements satisfy input Block
    end

    def my_any?                                                     # My version of the ANY method
        for index in 0...self.length                                # Iterate through each element of the calling Object (hopefully an Array)
            return true if yield(self[index])                       #   Return True if ANY self[index] elements satisfy input block
        end
        false                                                       # Return False if NO self[index] elements satisfy input Block
    end

    def my_none?                                                    # My version of the NONE method
        for index in 0...self.length                                # Iterate through each element of the calling Object (hopefully an Array)
            return false if yield(self[index])                      #   Return False if ANY self[index] elements satisfy input block
        end
        true                                                        # Return True if ALL self[index] elements do not satisfy input Block
    end

    def my_count(input)                                             # My version of the COUNT method
        match_count = 0                                             # Create a counter for matches
        for index in 0...self.length                                # Iterate through each element of the calling Object (hopefully an Array)
            match_count += 1 if self[index] == input                #   Increment match_count if self[index] element matches input
        end
        match_count                                                 # Return the amount of matches found
    end

    def my_map                                                      # My version of the MAP method
        for index in 0...self.length                                # Iterate through each element of the calling Object (hopefully an Array)
            self[index] = yield(self[index])                        #   Change self[index] element to something specified by input block
        end
        self                                                        # Return original Array (transformed by block)
    end

    def my_inject(result = self[0])                                 # My version of the INJECT method
        for index in 1...self.length                                # Iterate through each element of the calling Object (hopefully an Array)
            result = yield(result, self[index])                     #   Pass the current value of result and self[index] to input block and store the result
        end
        result                                                      # Return the result of the block input
    end

    def multiply_els                                                # A test to pass multiplication into my_inject method
        self.my_inject{|result, element| result * element}
    end

end