# The code snippet below uses dependency injection to improve the code
# so it can be open for extension (complies with OCP)

class SendResult
  def send_to(receiver = student, message, sender = EmailSender.new)
    # sender and receiver are now optional arguments and this
    # allows implementation of any type of sender (e.g. sms, letter, social media etc)
    # and receiver (e.g student, HOD, parent)
    sender.send(receiver, message)
  end
end
