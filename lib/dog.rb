# Add your code here
require 'pry'

class Dog

    @@all=[]

    attr_accessor :name




    def initialize (get_name)
        @name=get_name
        save

    end

    def self.all
        @@all
    end

    def self.clear_all
        @@all.clear
    end

    def self.print_all
      @@all.each do |name|
        puts name.name

      end
    end

    def save
        @@all << self
    end
end