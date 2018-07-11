# The code snippet below complies to interface segregation principle,
# the snacks vending mahine class is segregated into two interfaces. So each user
# has access to specific interface

class SnacksMachineUserInterface
  def select_snack
    # select snacks logic
  end

  def select_drink
    # select drink logic
  end
end

class SnacksMachineStaffInterface
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
    @snacks_machine = SnacksMachineUserInterface.new
  end

  def serve_yourself
    @snacks_machine.select_snack
    @snacks_machine.select_drink
  end
end

class Staff
  def initialize
    @snacks_machine = SnacksMachineStaffInterface.new
  end

  def service_machine
    @snacks_machine.clean_snacks_machine
    @snacks_machine.fill_snacks
    @snacks_machine.fill_drinks
  end
end
