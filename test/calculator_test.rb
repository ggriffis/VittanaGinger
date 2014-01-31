require 'minitest/spec'
require 'minitest/autorun'
require './lib/calculator'

class TestCalculator < MiniTest::Unit::TestCase
  def test_default_case
    assert_equal 18, Calculator.new.sum_multiples(3,10)
  end

  def test_multiple_greater_than_max_case
    assert_equal 0, Calculator.new.sum_multiples(50,10)
  end

  def test_multiple_of_zero
    assert_equal 0, Calculator.new.sum_multiples(0,10)
  end

  def test_multiple_of_one
    assert_equal 45, Calculator.new.sum_multiples(1,10)
  end

  def test_max_of_zero
    assert_equal 0, Calculator.new.sum_multiples(4,0)
  end

  def test_max_of_one
    assert_equal 0, Calculator.new.sum_multiples(1,1)
  end

  def test_max_equals_multiple
    assert_equal 0, Calculator.new.sum_multiples(10,10)
  end

  def test_multiple_one_less_than_max
    assert_equal 9, Calculator.new.sum_multiples(9,10)
  end
end
