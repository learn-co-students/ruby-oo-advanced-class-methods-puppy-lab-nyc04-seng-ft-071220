# Add your code here
class Dog 
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name 
        save
    end 

    def self.all
        @@all
    end 

    def self.clear_all 
        @@all.clear
    end 

    def self.print_all
        message = @@all.map do |dog|
            puts dog.name 
        end 
        message
    end 

    def save 
        @@all << self
    end


end 
