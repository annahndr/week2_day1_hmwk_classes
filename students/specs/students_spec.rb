require("minitest/autorun")
require("minitest/rg")
require_relative("../students")

class TestStudents < Minitest::Test

def setup
  @student = Students.new("Anna", "G8")
end

def test_student_name
  assert_equal("Anna", @student.name)
end

def test_student_cohort
  assert_equal("G8", @student.cohort)
end

def test_set_student_name
  @student.set_student_name("Jane")
  assert_equal("Jane", @student.name)
end

def test_set_student_cohort
  @student.set_student_cohort("G9")
  assert_equal("G9", @student.cohort)
end

def test_student_talk
  # @student.student_talk
  assert_equal("I can talk", @student.student_talk)
end

def test_favourite_language

  assert_equal("Anna: my fave lang is Ruby", @student.favourite_language("Ruby"))
end


end
