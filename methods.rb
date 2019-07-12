def bubble_sort_by array
    unsorted = true
    while unsorted do
        array.each_with_index do |v, i|
            if array[i+1] && yield(array[i], array[i+1]) > 0
                temp = array[i]
                array[i] = array[i+1]
                array[i+1] = temp
            else
                unsorted = false
            end
        end
    end
    array
end 
      
result = bubble_sort_by(["hi", "height", "hello"]) do |left,right|
    left.length - right.length
end