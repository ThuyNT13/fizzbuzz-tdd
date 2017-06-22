=begin
Write a program that prints integers from 1 to 100 using FizzBuzz rules.

  Given an integer input, print:
  - "Fizz" if it's a multiple of 3
  - "Buzz" if it's a mutiple of 5
  - "FizzBuzz" if it's a mutliple of 3 and 5 (15)
  - the number if neither a mutiple of 3 nor 5

BONUS:
- Refactor for DRYness.
- Refactor to make it dynamically capable of taking in various multiple pairs or messages.
EX: "Foo" for multiples of 2, "Bar" for mutliples of 7, "FooBar" for multiples of 14.

Start by pseudocoding the tests. In concise terms, describe what is expected. Within what context? if it's not concise, break it down further.
=end

def is_divisible_by_3?(num)
  num % 3 == 0
end

def is_divisible_by_5?(num)
  num % 5 == 0
end

def fizzbuzz(num)
  return "FizzBuzz" if (is_divisible_by_3?(num) && is_divisible_by_5?(num))
  return "Fizz" if is_divisible_by_3?(num)
  return "Buzz" if is_divisible_by_5?(num)
  num
end

def print_fizzbuzz(maxNum)
  1.upto(maxNum) { |i| puts fizzbuzz(i).to_s }
end

print_fizzbuzz(25)
