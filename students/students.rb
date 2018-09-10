

class Students

  def initialize(name, cohort)
    @student_name = name
    @cohort = cohort
  end

def name
  return @student_name
end

def cohort
  return @cohort
end

def set_student_name(new_name)
  @student_name = new_name
end

def set_student_cohort(new_cohort)
  @cohort = new_cohort
end

def student_talk
  return "I can talk"
end

def favourite_language(lang)
  return "#{@student_name}: my fave lang is #{lang}"
end




end
