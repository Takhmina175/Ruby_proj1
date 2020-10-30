def bubble_sort(arr)
  array_length = arr.size
  arr if array_length <= 1
  k = 1
  while k < array_length - 1
    sorted = false
    array_length.times do |i|
      value = arr[i] <=> arr[i + 1]
      if value == 1
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        sorted = true
      end
    end
    break unless sorted

    array_length -= 1
  end
  arr
end

p bubble_sort([4, 3, 78, 2, 0, 2, 0])

def bubble_sort_by(arr)
  array_length = arr.length - 1
  arr if array_length <= 1
  sorted = true
  while sorted
    sorted = false
    array_length.times do |i|
      value = yield arr[i], arr[i + 1]
      if value.positive?
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        sorted = true
      end
    end
    array_length -= 1
  end
  arr
end

p bubble_sort_by(%w[ruby css takhmina josias microverse]) { |left, right| left.length - right.length }
