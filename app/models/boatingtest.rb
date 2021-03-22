class BoatingTest

    attr_reader :student, :instructor, :name
    attr_accessor :status

    @@all = []

    def initialize(student, instructor, name, status)
        @student = student
        @instructor = instructor
        @name = name
        @status = status
        @@all << self
    end 

    def self.all
        @@all
    end

end
