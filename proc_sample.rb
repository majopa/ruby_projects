do_you_like = Proc.new do |something|
    puts("I really like " + something + "!")
end

do_you_like.call "\'merica"