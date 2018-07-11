# The code snippet below represents violation of the liskov substitution principle,
# the SendResult method inherits from StudentResult class but it alters the type of
# data returned - it returns a string with filtered data

class StudentResult
  def initialize(student)
    @student = student
  end

  def results
    @student.results
  end
end

class SendResult < StudentResult
  def results
    student_results = super

    formatted_result = ''
    student_results.each do |result|
      formatted_result += "subject: #{ result.course }\n" if result.current?
    end

    formatted_result
  end
end
