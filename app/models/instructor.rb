class Instructor
    @@all = []
    def initialize(name)
        @name = name
        self.class.all << self
    end

    def self.all
        self.class.all
    end

    def passed_students
        
    end

    def pass_student

    end

    def fail_student

    end

    def all_students

    end
end
