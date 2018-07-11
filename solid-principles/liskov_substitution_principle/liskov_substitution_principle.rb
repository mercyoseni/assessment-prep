# The code snippet below complies to liskov substitution principle,
# the logic for formatting results is separated so the method returns
# the same type of data as its base class

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
    student_results.select { |result| result.current? }
  end

  def formatted_result
    results.map { |result| "subject: #{ result.course }" }.join("\n")
  end
end
