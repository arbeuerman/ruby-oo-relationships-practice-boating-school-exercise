class Instructor

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end 

    def self.all
        @@all
    end 

    def tests_done
        BoatingTest.all.select { |test| test.instructor == self }
    end 

    def passed_tests
        tests_done.select { |test| test.status == "passed" }
    end 
    
    def passed_students
        passed_tests.map { |passed_test| passed_test.student }
    end 

    def all_students
        tests_done.map { |test| test.student }
    end 

    def pass_student(student, test_name)
        find_test(student, test_name, "passed")        
    end 

    def fail_student(student, test_name)
        find_test(student, test_name, "failed")
    end

    private
    def find_test(student, test_name, status)
        found_test = tests_done.find { |test| test.student == student && test.name == test_name }
        if found_test == nil
            found_test = BoatingTest.new(student, self, test_name, status)
        else
            found_test.status = status
        end 
        found_test
    end 


end
