class Student
  attr_accessor :name, :major, :gpa
  def initialize(name, major, gpa)
    @name = name
    @major = major
    @gpa = gpa
  rescue ArgumentError => e
    puts "Argument Error in your object definition:"
    puts e
  end

  def has_honours
    if @gpa >= 3.5
      return true
    end
    return false
  end
end


student1 = Student.new("Jim", "Business", 2.6)
student2 = Student.new("Pam", "Art", 3.6)
student3 = Student.new("Tim", "Economics", 4.8)

puts student1.has_honours
puts student2.has_honours
puts student3.has_honours


#-------------
#create a quiz
#-------------

class Question
  attr_accessor :prompt, :answer
  def initialize(prompt, answer)
    @prompt = prompt
    @answer = answer
  end
end

p1 = "What colour are apples?\n(a) red\n(b) purple\n(c) orange"
p2 = "What colour are bananas?\n(a) pink\n(b) red\n(c) yellow"
p3 = "What colour are pears?\n(a) yellow\n(b) green\n(c) orange"

questions = [#an array of objects
  Question.new(p1, "a"),
  Question.new(p2, "c"),
  Question.new(p3, "b")
]

def run_test(questions)
  answer = ""
  score = 0
  for question in questions
    puts question.prompt
    answer = gets.chomp()
    if answer == question.answer
      score += 1
    end
  end
  puts ("You got " +score.to_s + "/" + questions.length().to_s)
end

run_test(questions)
