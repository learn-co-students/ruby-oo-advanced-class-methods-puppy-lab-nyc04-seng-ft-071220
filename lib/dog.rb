# Add your code here

require 'pry'

class Dog
    
    @@all =[]

    def initialize(name)
        @name = name
        save
    end

    def name
        @name
    end

    def save 
        self.class.all << self
    end

    def self.all
        @@all
    end

    def self.print_all
        self.all.each{|val|
        puts val.name
        }
    end

    def self.clear_all
        @@all.clear
    end

end