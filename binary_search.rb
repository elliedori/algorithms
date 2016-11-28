def binary_search(arr, target)
  middle = arr.length/2
  if arr[middle] == target
    return arr[middle]
  elsif arr[middle] < target
    new_arr = arr[middle..-1]
    binary_search(new_arr, target)
  elsif arr[middle] > target
    new_arr = arr[middle..-1]
    new_arr = arr[0..middle]
    binary_search(new_arr, target)
  else
    return -1
  end
end

p binary_search([1,2,4,7,10,12,17,19,22,24], 24)
p binary_search([1,2,4,7,10,12,17,19,22,24], 12)
p binary_search([1,2,4,7,10,12,17,19,22,24], 9)
p binary_search([1,2,4,7,10,12,17,19,22,24], 2)