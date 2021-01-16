class Student
    @all = []
    def initialize(first_name)
        @first_name = first_name
        self.class.all << self
    end

    def self.all
        self.class.all
    end

    def add_boating_test
        test = self.new
    end


    end

    def instructors

    end

    def self.find_student(name)
        @@all.select {|student| student.first_name == name}
    end

    def grade_percentage

    end



end
