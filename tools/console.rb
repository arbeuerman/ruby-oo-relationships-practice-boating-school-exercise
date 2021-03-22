require_relative '../config/environment.rb'
require_relative '../app/models/boatingtest.rb'
require_relative '../app/models/instructor.rb'
require_relative '../app/models/student.rb'

def reload
  load '../config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

instructor1 = Instructor.new("Jamie")
instructor2 = Instructor.new("Alex")

student1 = Student.new("Danika")
student2 = Student.new("Ronnie")

boating_test1 = BoatingTest.new(student1, instructor1, "test1", "passed")
boating_test2 = BoatingTest.new(student1, instructor1, "test2", "failed")

boating_test3 = BoatingTest.new(student2, instructor1, "test3", "passed")
boating_test4 = BoatingTest.new(student2, instructor2, "test4", "passed")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

