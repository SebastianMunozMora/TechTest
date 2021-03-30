require 'pp'

def positiveFilter (arr)
    fil = arr.map do |item|
        if /^[1-9]\d*/ =~ item.to_s
            item
        else
            0
        end
    end
   fil
end

def printArr(arr) 
    filteredArr = positiveFilter(arr)
    table = Array.new(3) {Array.new(10, ' ')}
    filteredArr.each_index do |i|
        table[i].each_index do |col|
            if filteredArr[i] <= 10 && col < filteredArr[i]
                table[i][col] = '*'
            end
        end
    end
    table
end

inputArr = Array.new(3)
inputArr.each_index do |i|
    print 'type ' + (i+1).to_s + ' number: '
    inputArr[i] = gets.to_i
end

print PP.pp(printArr(inputArr))
