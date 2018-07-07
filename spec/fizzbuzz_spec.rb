require_relative 'spec_helper.rb'

describe 'FizzBuzz' do
  describe 'divisible_by?()' do
    it 'checks if integer is divisible by 3' do
      expect(divisible_by?(3, 33)).to be(true)
    end
    it 'checks if integer is not divisible by 3' do
      expect(divisible_by?(3, 7)).to be(false)
    end
    it 'checks if integer is divisible by 5' do
      expect(divisible_by?(5, 90)).to be(true)
    end
    it 'checks if integer is not divisible by 3' do
      expect(divisible_by?(5, 57)).to be(false)
    end
  end

  describe 'prints()' do
    it "prints integer for integers indivisible by either pairs of integers" do
      expect(prints(37, 3, 5)).to eq("37")
    end
    it "prints fizz for integers divisible by the lesser of the integer pairs" do
      expect(prints(99, 3, 5)).to eq("fizz")
    end
    it "prints buzz for integers divisible by the greater of the integer pairs" do
      expect(prints(55, 3, 5)).to eq("buzz")
    end
    it "prints fizzbuzz for integers divisible by both integer pairs" do
      expect(prints(210, 3, 5)).to eq("fizzbuzz");
    end
  end
end
