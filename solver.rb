def factorial(num)
  raise ArgumentError, 'Argument must be non-negative' if num.negative?

  1 if num.zero?

  (1..num).reduce(:*)
end

def reverse(word)
  word.reverse
end

def fizzbuzz(number)
  if (number % 15).zero?
    'fizzbuzz'
  elsif (number % 3).zero?
    'fizz'
  elsif (number % 5).zero?
    'buzz'
  else
    number.to_s
  end
end

puts factorial(5)
puts factorial(0)

puts reverse('hello')
puts reverse('world')

puts fizzbuzz(3)
puts fizzbuzz(5)
puts fizzbuzz(15)
puts fizzbuzz(7)

# puts factorial(-1)
