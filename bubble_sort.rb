# method that takes an array, sorts it manually, then returns it
def bubble_sort(arr)
  swapped = true

  while swapped
    swapped = false
    0.upto(arr.length - 2) do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swapped = true
      end
    end
  end

  print arr
end

puts bubble_sort([4,3,78,2,0,2])
