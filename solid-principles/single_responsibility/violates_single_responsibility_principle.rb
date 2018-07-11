# The code snippet below represents violation of the single responsibility principle

class CalculateScore
  def initialize(student, scores)
    @student = student
    @scores = scores
    @result = ''
  end

  def calculate_total_score
    # calculate scores for students
  end

  def send_result
    # send results to senate or whoever
  end
end

student_scores = CalculateScore.new(student, scores)
student_scores.calculate_total_score
student_scores.send_result
