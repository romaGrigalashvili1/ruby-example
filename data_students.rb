require_relative 'students'


reader=Csvreader.new
ARGV.each do |filename|
  STDERR.puts "Processing #{filename}"
  reader.read_in_csv_data(filename)
end

ARGV.clear
reader.write_in_csv_data
h2 = reader.students_gpa
value = gets.chomp
reader.students.each do |x|
  if x.name == value
    puts x.debt
  end
end
puts reader.total_debt_in_data
p h2
CSV.foreach('student_data.csv', headers: true) do |row|
  puts h2[row["name"]]
end