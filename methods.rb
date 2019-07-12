def bubble_sort(n)
      return n if n.length <= 1
      i = 0 
      j = 0
      while j < n.length-1
      while i < n.length-1
        if n[i] > n[i+1]
        n[i], n[i+1] = n[i+1], n[i]
        end 
              i+= 1
      end
      j+= 1
      i = 0
      end
      return n 
    end


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


