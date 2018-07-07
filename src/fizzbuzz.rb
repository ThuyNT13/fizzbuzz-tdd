=begin
Write a program that prints integers from 1 to 100 using FizzBuzz rules as follows:

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

def divisible_by?(multi, num)
  num % multi == 0
end

def prints(num, multi1, multi2)
  msg = ""

  if divisible_by?(multi1, num)
    msg = "fizz"
  end
  if divisible_by?(multi2, num)
    msg += "buzz"
  end
  if msg.length == 0
    msg = num.to_s
  end

  return msg
end
