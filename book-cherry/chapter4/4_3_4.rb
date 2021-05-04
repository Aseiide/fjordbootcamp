numbers = [1, 2, 3, 4]
sum = 0 #初期化
numbers.each do |n|
  sum_value = n.even? ? n * 10 : n
  sum += sum_value
end

p sum
