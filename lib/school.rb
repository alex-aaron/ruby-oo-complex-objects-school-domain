# code here!
class School 
    def initialize(name)
        @name = name
        @roster = {}
    end

    def name
        @name
    end

    def roster
        @roster
    end

    def add_student(student, grade)
        if @roster.include?(grade)
            @roster[grade] << student
        else
            @roster[grade] = []
            @roster[grade] << student
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        new_hash = {}
        @roster.each do |grade, students|
            sorted_grade = @roster[grade].sort
            new_hash[grade] = sorted_grade
        end
        new_hash
    end
end
