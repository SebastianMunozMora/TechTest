def evenNumbers
    arr = Array.new()
    20.times do |n|
        n+=1
        if n % 2 == 0
            arr << n
        end
    end
    return arr
end

print evenNumbers