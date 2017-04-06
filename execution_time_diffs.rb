# phase 1 : quadratic : O(n**2)

def my_min1(list)

  smallest = list.first

  i = 0
  while i < list.length
    j = 1
    while j < list.length
      if list[j] < smallest
        smallest = list[j]
      end
      j += 1
    end
    i += 1
  end

  smallest
end

p my_min1([0, 3, 5, 4, -5, 10, 1, 90])

# phase 2 : linear : O(n)

def my_min2(list)

  smallest = list.shift

  list.each do |el|
    smallest = el if el < smallest
  end

  smallest

end
p my_min2([0, 3, 5, 4, -5, 10, 1, 90])
