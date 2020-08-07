# Add your code here


class Dog

    @@all = [] 

    attr_accessor :name

    def initialize(name_param)
        @name = name_param
        # @@all << self
        save
        
    end

    def self.all
        @@all
    end 

    def self.clear_all
        self.all.clear
    end

    def self.print_all
        self.all.each do |name_puppy|
            puts "#{name_puppy.name}"
        end
    end

    def save
        @@all << self
    end

    def name
        @name
    end
end

