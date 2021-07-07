require 'pry'
class Dog

    attr_accessor :name

@@all = []

    def initialize(name_arg)
        @name = name_arg
        self.save
    end

    def self.all
        @@all
    end

    def self.print_all
        self.all.map do |dog|
        puts "#{dog.name}"
        end
    end

    def self.clear_all
        self.all.clear
    end

    def save
        self.class.all << self
    end

end

#Cooper = Dog.new("Cooper")
#binding.pry
0