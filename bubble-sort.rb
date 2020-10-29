def bubble_sort_by(arr)
    array_length = arr.length
    arr if array_length <= 1
   k = 1
    while k < array_length-1 do
      sorted = false
  
      (array_length-1).times do |i|
        value = arr[i] <=> arr[i+1]
        if value == 1
          arr[i], arr[i+1] =  arr[i+1], arr[i]
          sorted = true
        end
      end
      break if not sorted
  
    end
    arr
  end
  sorted_arr = [2,56, 89, 0,78,1,5]
  p bubble_sort_by(sorted_arr)