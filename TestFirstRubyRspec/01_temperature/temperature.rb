# Author: Matthew Palomar
# Date: 9/20/15

# Desc: Simple Fahrenheit to Celsius and Celsius to Fahrenheit converter

def ftoc(temp)
    c = (temp.to_f - 32) * 5/9
end

def ctof(temp)
    f = (temp.to_f * 9/5) + 32
end