def input_students
  puts "Please enter the names of the students"
  puts "to finish, just hit return twice"
  # return an empty array
  students = []
  # get the name first
  name = gets.chomp
  # while the name is nt empty, repeat this code
  while !name.empty? do 
    students << {name: name, cohort: :november} 
    puts "Now we have #{students.count} students"
    # get another name from the user
    name = gets.chomp
  end
  # returns students
  students
end	

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  # modify to print a number before each student name
  # only students whose name begins with "N" and is shorter than 12 characters
  students.each_with_index do |student, index|
    if student[0].chars[0] == "N" && student[0].length < 13
    puts "#{index + 1}. #{student[0]} (#{student[1].capitalize} cohort)"
    end
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

students = input_students
# nothing happens until we call the methods
print_header
print(students)
print_footer(students)

