class Student

	attr_reader :first_name, :last_name, :grade
	def initialize(first_name, last_name, grade)
		@first_name = first_name
		@last_name = last_name
		@grade = grade
	end

	def junior?
		grade ==11
	end

	def senior?
		grade == 12
	end

	def to_s
		"#{last_name}, #{first_name}"
	end
end

def juniors(students)
	students.select{|student| student.junior?}
end

def seniors(students)
	students.select { |student| student.senior? }
end


fred = Student.new("Fred", "James", 12)
sarah = Student.new("Sarah", "Smith", 12)
jack = Student.new("Jack", "Gong", 11)
all_students = [fred, sarah, jack]

puts "Seniors"
seniors(all_students).select{|student| puts "*#{student}"}
puts
puts "Juniors"
juniors(all_students).select{|student| puts "*#{student}"}



