#putting the students into an array
students = [
"Dr. Hannibal Lector",
"Darth Vader",
"Nurse Ratchet",
"Michael Corleone",
"Alex DeLarge",
"The Wicked Witch of the West",
"Terminator",
"Freddy Krueger",
"The Joker",
"Joffrey Baratheon",
"Norman Bates"
]
#printing the students
puts "The students of Villains Academy\n--------------"
students.each do |student|
  puts student
end
#printing the total number of students
puts "Overall, we have #{students.count} great students"
