require 'csv'
require_relative 'data_students'

class Csvreader
  attr_accessor :students
  def initialize
    @students = []
  end
  def read_in_csv_data(csv_file_name)
    CSV.foreach(csv_file_name, headers: true) do |row|
      @students << Student.new(row["Name"], row["Last_name"],row["Gpa"],row["Debt"])
    end
  end

  def total_debt_in_data
    sum = 0
    @students.each do |x|
      sum += x.debt.to_i
    end
    sum
  end

  def student_debt
    hash1 = {}
    @students.each do |x|
      hash1[x.name + x.last_name] = x.debt
    end
    hash1
  end

  def students_gpa
    hash2 = {}
    @students.each do |x|
      hash2[x.name + x.last_name] = x.gpa
    end
    hash2
  end

end
