class Instructor
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        self.class.all << self
    end

    def self.all
        @@all
    end

    def all_tests
        BoatingTest.all.select {|test| test.instructor == self }
    end

    def all_students
        self.all_tests.map {|test| test.student}
    end

    def passed_tests
        self.all_tests.select {|test| test.test_status == "Pass"}
    end

    def passed_students
        self.passed_tests.map {|test| test.student}
    end

    def pass_student(student_ins, test_name)
        BoatingTest.all.find do |test|
            if test.student == student_ins && test.test_name == test_name
                test.test_status = "Pass"
            else
                BoatingTest.new(student_ins, test_name, "Pass", self)
            end
        end
    end

    def fail_student(student_ins, test_name)
        BoatingTest.all.find do |test|
            if test.student == student_ins && test.test_name == test_name
                test.test_status = "Fail"
            else
                BoatingTest.new(student_ins, test_name, "Fail", self)
            end
        end
    end    
end
