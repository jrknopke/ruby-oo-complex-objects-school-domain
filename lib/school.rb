# code here!
class School
    attr_reader :name, :roster
    
    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student, grade)
        if @roster[grade] ||= []
            roster[grade] << student
        else
            roster[grade] = [student]
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.each do |key, value|
            value.sort!
        end
    end
    
end