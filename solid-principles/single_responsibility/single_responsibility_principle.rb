# Complies with SRP

class CalculateScore
  def initialize(student, scores)
    @student = student
    @scores = scores
  end

  def calculate_total_score
    # calculate scores for students
  end
end

class SendResult
  def initialize(results)
    @result = result
  end

  def send_result
    # send results to senate or whoever
  end
end

student_results = CalculateScore.new(student, scores).calculate_total_score
SendResult.new(student_results).send_result
