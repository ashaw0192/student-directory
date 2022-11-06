#Prints the header for final list
def print_header
  puts "The students of Villains Academy\n--------------".center(10)
end

#(Exercise 1) Prints each individual student using each loop and with index 
def prints(students)
  students.each_with_index do |student, idx|
    puts "#{idx +1}. #{student[:name]} (#{student[:cohort]} cohort)".center(10)
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
  if !students.empty?
    students.count == 1 ? (puts "Overall, we have 1 great student") : (puts "Overall, we have #{students.count} great students")
  else
    puts "What gives?"
  end
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

#(exercise 5) gathers more information about students
def input_students_with_details
  puts "Please enter name"
  puts "to finish, just hit return twice"
  students = []
  name = gets.chomp
  while !name.empty? do
    puts "Please enter height in cm"
    puts "skip with return twice"
    height = gets.chomp
    height = "N/A" if height.empty?
    puts "Please enter place of birth"
    puts "skip with return twice"
    birthplace = gets.chomp
    birthplace = "N/A" if birthplace.empty?
    students << {name: name, cohort: :november, height: height, birthplace: birthplace}
    puts "Please enter name"
    puts "to finish, just hit return twice"
    name = gets.chomp
  end
  students
end

#(exercise 7) takes student names and cohorts and points out spelling mistakes on potential cohorts
#(exercise 8) singular and plural students implemented
def input_student_and_cohort
  months = ["january", "february", "march", "april", "may", "june", "july", "august", "september", "october", "november", "december"]
  puts "Please enter name of student"
  puts "to finish, just hit return twice"
  students = []
  name = gets.chomp
  while !name.empty? do
    puts "please enter cohort"
    puts "skip with return twice"
    cohort = gets.chomp.downcase
    cohort = "november" if cohort.empty?
    if !months.include?(cohort)
      puts "bad spelling! try again"
      cohort = gets.chomp
    end
    students << {name: name, cohort: cohort.to_sym}
    students.count == 1 ? (puts "Now we have 1 student") : (puts "Now we have #{students.count} students")
    puts "Please enter name of student"
    puts "to finish, just hit return twice"
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

#(exercise 8) puts the students but grouped by cohort
def print_by_cohort(students)
  if !students.empty?
    students = students.sort_by! { |x| x["cohort".to_sym] }
    students.each_with_index do |student, idx|
      puts "#{idx +1}. #{student[:name]} (#{student[:cohort]} cohort)".center(10)
    end
  else
    puts "List empty"
  end 
end

def alternative_to_chomp
  puts "Enter string"
  string = gets.rstrip
  while !string.empty?
    puts string
    puts "enter string"
    string = gets.rstrip
  end
end

#alternative_to_chomp
#for running the program
#students = input_students
students = input_student_and_cohort
#students = input_students_with_details
print_header
#prints(students)
print_by_cohort(students)
print_footer(students)
#print_beginning_with(students)
#print_shorter_than_n_characters(students)

