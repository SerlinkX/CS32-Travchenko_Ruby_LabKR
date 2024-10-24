
require 'minitest/autorun'
require_relative 'Task1'

class TestGCD < Minitest::Test
  # Тест для звичайних позитивних чисел
  def test_gcd_positive_numbers
    assert_equal 6, gcd(54, 24)
    assert_equal 1, gcd(17, 13)
  end

  # Тест для одного нульового числа
  def test_gcd_with_zero
    assert_equal 10, gcd(10, 0)
    assert_equal 10, gcd(0, 10)
  end

  # Тест для однакових чисел
  def test_gcd_same_numbers
    assert_equal 7, gcd(7, 7)
  end

  # Тест для негативних чисел
  def test_gcd_negative_numbers
    assert_equal 5, gcd(-15, -10)
    assert_equal 6, gcd(-54, 24)
  end
end

