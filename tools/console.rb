require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

spongebob = Student.new("Spongebob")
patrick= Student.new("Patrick")
squidward = Student.new("Squidward")

puff= Instructor.new("Ms.Puff")
krabs= Instructor.new("Mr.Krabs")
sandy = Instructor.new("Sandy")

test1 = BoatingTest.new(spongebob, "Attempt #173", "Fail", puff)
test2 = BoatingTest.new(patrick, "Attempt #1", "Pass", krabs)
test3 = BoatingTest.new(squidward, "Atempt #3", "Pass", puff)
test4 = BoatingTest.new(spongebob, "Attempt #1", "Fail", sandy)

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

