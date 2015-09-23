# Author: Matthew Palomar
# Date: 9/22/15

# Desc: Experimentation with how fast blocks take to execute when passed into a method

class Friend

    def greeting(name="")
        if name == ""
            "Hello!"
        else
            person = ", " + name
            "Hello" + person + "!"
        end
    end

end