module EmailReporter
  def send_report
    puts "Sending report......"
    # code to send report here
    puts "Done!"
  end

  def receive_report
    puts "Receiving report..."
    puts "Done!"
  end
end

class Employee

  attr_reader :first_name, :last_name
  attr_accessor :salary, :active
  
  def initialize(input_hash)
    @first_name = input_hash[:first_name] || "John"
    @last_name = input_hash[:last_name] || "Messina"
    @salary = input_hash[:salary] || 50000
    @active = input_hash[:active] || false
  end

  def print_info
    @statement = "#{first_name} #{last_name} makes $#{salary} now."
  end

  def give_annual_raise
    @salary = 1.05 * @salary
  end

  def full_name
    # if last_name[-1] == "s"
    if last_name.end_with?("s")
      "#{first_name} #{last_name}, Esquire"
    else
      "#{first_name} #{last_name}"
    end
  end

  def say_hello
    puts "Hello!"
  end
end

employee1 = Employee.new(active: true, first_name: "Andy", last_name: "Zhao", salary: 100000)
employee2 = Employee.new(active: true, first_name: "Kenny", last_name: "Parekhs", salary: 100000)

class Manager < Employee
  include EmailReporter
  attr_reader :employees

  def initialize(input_hash)
    super
    @employees = input_hash[:employees] || "none"
  end

  def print_info
    super
    @statement + "Wow"
  end

  def give_all_raises
    @employees.each do |employee|
      employee.give_annual_raise
    end
  end

  def fire_all_employees
    @employees.each do |employee|
      employee.active = false
    end
  end
end

manager = Manager.new(first_name: "Luke", last_name: "Skywalker", salary: 1000000, active: true, employees: [employee1, employee2])

class Intern < Employee
  include EmailReporter
end

intern = Intern.new(first_name: "John", last_name: "Messina", salary: 50000, active: true)
p intern.print_info
intern.send_report
