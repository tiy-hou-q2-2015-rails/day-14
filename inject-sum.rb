require 'pry'
numbers = [5,6,7,8]

# puts numbers.inject(:+)

sum = numbers.inject(0) do |total, number|
  # puts "total=#{total} and number=#{number}"
  total = total + number
  total
end

puts sum
