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

# phase 1 : quadratic : O(n**2)

# def sub_sums(array)
#   subs = []
#
#   array.each_with_index do |el, idx|
#     # sub_arr = array[0...idx] + array[idx + 1..-1]
#     subs << [el]
#     array.each_with_index do |el2, idx2|
#       next if idx == idx2
#       subs << [el, el2]
#     end
#   end
#   subs << [array]
# end

def sub_sums(array)
  return [[]] if array.empty?
  subs = sub_sums(array[0...-1])
  subs = subs.concat(subs.map { |x| x.dup << array[-1] })
  subs = subs.select do |arr|
    arr.each_cons(2).all? { |a,b| (a + 1) == b }
  end

  sum(subs)
end

def sum(arr)
  arr.reject! { |arr| arr.empty? }

  arr.map! { |arr| arr.reduce(:+) }

  arr.max
end


p sub_sums([2, 3, -6, 7, -6, 7])
