class Student
    attr_accessor :first_name
    @@all = []

    def initialize(first_name)
        @first_name = first_name
        self.class.all << self
    end

    def self.all
        @@all
    end

    def add_boating_test(test_name, test_status, instructor)
        BoatingTest.new(self, test_name, test_status, instructor)
    end

    def all_tests
        BoatingTest.all.select {|test| test.student == self}
    end

    def all_instructors
        self.all_tests.map {|test| test.instructor}
    end

    def self.find_student(name)
        @@all.select {|student| student.first_name == name}
    end

    def grade_percentage
        passes = self.all_tests.select {|test| test.test_status == "Pass"}.count
        tests_taken = self.all_tests.count.to_f
        grade_percent = passes/tests_taken * 100
        grade_percent
    end
end
