require 'csv'

class Student
    attr_accessor :debt
    attr_reader :name,:last_name,:gpa
    
    def initialize(name,last_name,gpa,debt)
        @name=name
        @last_name=last_name
        @gpa=gpa
        @debt=debt
        
        @student_in_stock = []
    end
    def printing
  	  print(@name+' '+@last_name+' '@gpa)
  	end
  	
  	def data_read(csv_file_name)
  	    CSV.foreach(csv_file_name) do |row|
  	        @student_in_stock<<Student.new(row["name"],row["last_name"],row["gpa"],row["debt"])
  	    end
  	end


#3

  	def calculate_data_sum
  	debt=0
  	student_in_stock.value.each { |i| debt +=i[1] }
  	debt
  	end
end

s1=Student.new("roma","grigalashvili",3.0,0)
s1.read_data('data.csv')
s1.read_name
puts s1.calculate_data_sum

#4

def read_name
ARGV.each do |student|
puts "debt of #{student}:#{@@student[student][1]}lari"
end
end

def student
@@student
end


#5

CSV.foreach('data-st.csv',headers:true)do|row|
student=row['name']+'_'+row['last_name']
if s1.students.include?(student)
    puts "#{student}: #{s1.students[student][0]} GPA"
  end
end

