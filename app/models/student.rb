class Student

    attr_reader :first_name

    @@all = []

    def initialize(name)
        @first_name = name
        @@all << self
    end 

    def self.all
        @@all
    end 

    def self.find_student(student_name)
        all.find { |student| student.first_name == student_name }
    end 

    def add_boating_test(instructor, test_name, test_status)
        BoatingTest.new(self, instructor, test_name, test_status)
    end 

    def tests
        BoatingTest.all.select { |boating_test| boating_test.student == self }
    end 

    def all_instructors
        tests.map { |test| test.instructor }
    end

    def passing_tests
        tests.select {|test| test.status == "passed"}
    end

    def grade_percentage
        passing_tests.count/tests.count.to_f.round(2)*100
    end 

end
