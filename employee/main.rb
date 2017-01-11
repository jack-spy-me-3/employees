require_relative "manager.rb"
require_relative "intern.rb"
require "../employee_class.rb"
require "./email_reporter.rb"
require "./timecard.rb"

employee1 = Employee.new(active: true, first_name: "Andy", last_name: "Zhao", salary: 100000)
employee2 = Employee.new(active: true, first_name: "Kenny", last_name: "Parekhs", salary: 100000)
manager = Manager.new(first_name: "Luke", last_name: "Skywalker", salary: 1000000, active: true, employees: [employee1, employee2])
intern = Intern.new(first_name: "John", last_name: "Messina", salary: 50000, active: true)
p intern.print_info
p employee1.print_info
p manager.print_info
intern.send_report
employee1.timecard_submission
