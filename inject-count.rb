numbers = [3,5,3,5,3,5,5]

# {
#   3 => 3
#   5 => 4
# }

# data = {}
#
# numbers.each do |number|
#   data[number] = data[number].to_i + 1
# end

answer = numbers.inject({}) do | hash, number|
  hash[number] = hash[number].to_i + 1
  hash
end

print answer
