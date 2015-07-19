#Project Euler's Problem 1:
# If we list all the natural numbers below 10 that are multiples of 3 or 5,
# we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

# creates an array of all natural numbers below 1000
def array
  (1..999).to_a
end

# Finds multiples of 3 in our array
def three_array
  array.select{|n| (n % 3).zero?}
end

# Finds multiples of 5 in our array
def five_array
  array.select{|n| (n % 5).zero?}
end

# Finds multiples of 15 in our array
def fifteen_array
  array.select{|n| (n % 15).zero?}
end

# adds the elements of the 'multiples of 3' array into one sum
def sum_three_array
  three_array.inject(:+)
end

# adds the elements of the 'multiples of 5' array into one sum
def sum_five_array
  five_array.inject(:+)
end

# adds the elements of the 'multiples of 5' array into one sum
def sum_fifteen_array
  fifteen_array.inject(:+)
end

# adds the two summed arrays together, subtracts extra multiples of 15
def sum_arrays
  sum_three_array + sum_five_array - sum_fifteen_array
end

puts sum_arrays