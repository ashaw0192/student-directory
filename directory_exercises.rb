#Prints the header for final list
def print_header
  puts "The students of Villains Academy\n--------------"
end

#(Exercise 1) Prints each individual student using each loop and with index 
def prints(students)
  students.each_with_index do |student, idx|
    puts "#{idx +1}. #{student[:name]} (#{student[:cohort]} cohort)"
  end
end

#(Exercise 4) Alternate print method using while loop
def prints_while(students)
  counter = 0
  while counter != students.count
    puts students[counter]
    counter += 1
  end
end

#Prints the footer for final list with count
def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

#Takes user input of students 
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

#(Exercise 2) Prints students beginning with given letter
def print_beginning_with(students)
  puts "Student's names beginning with which letter should be printed?"
  puts "To skip, just hit return"
  letter = gets.chomp.upcase
  if !letter.empty?
    students.each do |student|
      name_string = student[:name]
      puts student if name_string[0] == letter
    end
  end
end

#(Exercise 3) Prints students whose names have less than n characters
def print_shorter_than_n_characters(students)
  puts "Enter number to select students who's names have less characters"
  puts "To skip, just hit return"
  less_than = gets.chomp
  if !less_than.empty?
    students.each do |student|
      name_string = student[:name]
      puts student if name_string.delete(" ").length < less_than.to_i
    end
  end
end

#for running the program
students = input_students
print_header
prints(students)
print_footer(students)
print_beginning_with(students)
print_shorter_than_n_characters(students)
