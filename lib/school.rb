require 'pry'
class School
attr_accessor :student, :grade, :roster, :students


def initialize(school)
    @roster = {}
    @students = []
end
def add_student(student, number)
    @students << student
    @roster.key?(number) ? @roster[number] << student : @roster[number] = [student]
end
def grade(grade)
    @roster[grade]
end
def sort
    sorted = {}
    @roster.each {|grades, students| sorted[grades] = students.sort }
 return sorted
end

end