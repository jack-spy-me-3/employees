require "./timecard.rb"
class Employee
  include Timecard
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
