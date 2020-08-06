# Add your code here
require 'pry'

class Dog 

    attr_reader :name
    @@all = []

    def initialize(name_param)
        @name = name_param
        save
    end

    def self.all 
        @@all
    end

    def self.clear_all
        self.all.clear
    end

    def self.print_all 
        self.all.each { |dog| puts dog.name }
    end

    def save
        @@all << self
    end



end

# binding.pry
0