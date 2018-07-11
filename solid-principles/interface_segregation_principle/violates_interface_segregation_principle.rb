# The code snippet below represents violation of the interface segregation principle
# SnacksMachineInterface represents a snacks vending machine interface which is used
# by two types of users - a person and a staff. Each user only uses a few interface
# abilities but is exposed to other abilities.

class SnacksMachineInterface
  def select_snack
    # select snacks logic
  end

  def select_drink
    # select drink logic
  end

  def clean_snacks_machine
    # clean snacks machine logic
  end

  def fill_snacks
    # fill snacks logic
  end

  def fill_drinks
    # fill drinks logic
  end
end

class Person
  def initialize
    @snacks_machine = SnacksMachineInterface.new
  end

  def serve_yourself
    @snacks_machine.select_snack
    @snacks_machine.select_drink
  end
end

class Staff
  def initialize
    @snacks_machine = SnacksMachineInterface.new
  end

  def service_machine
    @snacks_machine.clean_snacks_machine
    @snacks_machine.fill_snacks
    @snacks_machine.fill_drinks
  end
end
