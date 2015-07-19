#Project Euler's Problem 1:
# If we list all the natural numbers below 10 that are multiples of 3 or 5,
# we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

# creates an array of all natural numbers below 1000

def array
  (1..999).to_a
end

# Finds multiples of 3 or 5 in our array
def three_or_five_array
  array.select{|n| (n % 3).zero? || (n % 5).zero?}
end

# adds together the elements of the 'multiples of 3 or 5' array into one sum
def sum_three_or_five_array
  three_or_five_array.inject(:+)
end

puts sum_three_or_five_array