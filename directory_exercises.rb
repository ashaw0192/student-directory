def print_header
  puts "The students of Villains Academy\n--------------"
end

def prints(students)
  students.each_with_index do |student, idx|
    puts "#{idx +1}. #{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  students = []
  name = gets.chomp
  while !name.empty? do
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    name = gets.chomp
  end
  students
end

def print_beginning_with(students)
  puts "Student's names beginning with which letter should be printed?"
  letter = gets.chomp.upcase
  students.each do |student|
    name_string = student[:name]
    puts student if name_string[0] == letter
  end
end

students = input_students
print_header
prints(students)
print_footer(students)
print_beginning_with(students)
