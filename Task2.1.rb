
require 'minitest/autorun'
require_relative 'Task2'

class StudentTest < Minitest::Test
  # Тест для перевірки створення об'єкта
  def test_initialize
    student = Student.new("Олександр", [85, 90, 78])
    assert_equal "Олександр", student.name
    assert_equal [85, 90, 78], student.grades
  end

  # Тест для перевірки додавання оцінки
  def test_add_grade
    student = Student.new("Олександр")
    student.add_grade(85)
    assert_equal [85], student.grades
  end

  # Тест для перевірки обчислення середнього балу
  def test_average_grade
    student = Student.new("Олександр", [85, 90, 78])
    assert_in_delta 84.33, student.average_grade, 0.01  # Перевірка з допустимою похибкою
  end

  # Тест для перевірки середнього балу при порожньому списку оцінок
  def test_average_grade_with_empty_grades
    student = Student.new("Олександр")
    assert_equal 0, student.average_grade
  end
end
