require_relative "employee.rb"
require_relative "email_reporter.rb"

class Intern < Employee
  include EmailReporter

  def make_coffee
  end
end
