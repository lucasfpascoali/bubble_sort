def bubble_sort(array)
  is_sorted = false
  changes_number = 0
  until is_sorted do
    for i in 0...array.length do
      condition = array[i] <=> array[i + 1]
      if condition == 1
        tmp = array[i]
        array[i] = array[i + 1]
        array[i + 1] = tmp
        changes_number += 1
      end     
    end
    is_sorted = changes_number == 0 ? true : false
    changes_number = 0
  end
  array
end

p bubble_sort([4,3,78,2,0,2])
