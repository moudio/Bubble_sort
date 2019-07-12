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