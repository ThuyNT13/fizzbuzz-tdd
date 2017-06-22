require_relative 'spec_helper.rb'

describe 'FizzBuzz' do
  describe 'is_divisible_by_3?()' do
    it 'returns true if divisible by 3' do
      expect(is_divisible_by_3?(21)).to be(true)
    end
    it 'returns false if not divisible by 3' do
      expect(is_divisible_by_3?(4)).to be(false)
    end
  end
  describe 'is_divisible_by_5?()' do
    it 'returns true if divisible by 5' do
      expect(is_divisible_by_5?(45)).to be(true)
    end
    it 'returns false if not divisible by 5' do
      expect(is_divisible_by_5?(38)).to be(false)
    end
  end

  describe 'fizzbuzz() prints' do
    it 'the input integer for numbers divisible by neither 3 nor 5.' do
      expect(fizzbuzz(37)).to eq(37)
    end
    it '"Fizz" for numbers divisible by 3.' do
      expect(fizzbuzz(6)).to eq("Fizz")
    end
    it '"Buzz" for numbers divisible by 5.' do
      expect(fizzbuzz(100)).to eq("Buzz")
    end
    it '"FizzBuzz" for numbers divisible by 3 and 5.' do
      expect(fizzbuzz(45)).to eq("FizzBuzz")
    end
  end
end
