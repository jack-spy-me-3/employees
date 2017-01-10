class Employee

  attr_reader :first_name, :last_name, :salary, :active
  attr_writer :salary, :active

  def initialize(input_hash)
    @first_name = input_hash[:first_name]
    @last_name = input_hash[:last_name]
    @salary = input_hash[:salary]
    @active = input_hash[:active]
  end

  def print_info
    "#{first_name} #{last_name} makes $#{salary} now. Wow!!!!"
  end

  def give_annual_raise
    @salary = 1.05 * @salary
  end
end

employee1 = Employee.new("Andy", "Zhao", 100000, true)
puts employee1
puts employee1.print_info
employee1.give_annual_raise
puts employee1.print_info
puts employee1.first_name
employee1.salary = 120000
puts employee1.salary
employee1.active = false
puts employee1.active

employee2 = Employee.new(active: true, first_name: "Kenny", salary: 90000, last_name: "Parekh")
puts employee2.print_info