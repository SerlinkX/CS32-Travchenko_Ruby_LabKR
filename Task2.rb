
class Student
  attr_accessor :name, :grades

  def initialize(name, grades = [])
    @name = name
    @grades = grades
  end

  def add_grade(grade)
    @grades << grade
  end

  def average_grade
    return 0 if @grades.empty?
    @grades.sum.to_f / @grades.size
  end
end
