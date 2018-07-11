# The code snippet below represents violation of the open-closed principle

class SendResult
  def send_to(student, message)
    EmailSender.send(student, message)
  end
end
