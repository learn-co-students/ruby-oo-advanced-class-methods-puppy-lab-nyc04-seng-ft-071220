  
  # You need to write a program that stores each new puppy that is born. 
  # You will write a Dog class that initializes with a name and also stores each new instance 
  # of Dog that is instantiated.

  # Create a class variable @@all set to an empty array inside your class. 
  # This array is the storage container for each instance of a Dog that gets created. 
  # In other words, every puppy that is born should get pushed into this array 
  # at the moment of instantiation––in the #initialize method! 
  # Use the self keyword inside the #initialize method to refer to 
  # the new dog you are trying to store in your @@all array.
class Dog
    attr_accessor :name
  
    @@all = []

    def initialize(name)
      @name = name
      save
    end
  
    # Write a class method, .all, that reads this variable. 
    # From inside the Dog class, we can access the @@all class variable, 
    # but whenever we might be interacting with our Dog class from the outside, 
    # this .all class method acts as our direct interface to the @@all variable.

    def self.all
      @@all
    end
  
    # You will need to write a class method, .print_all, that iterates over 
    # all of the individual dogs stored in the @@all array and puts out their name to the terminal.

    def self.print_all
      puts @@all.map{ |dog| dog.name }
    end
  
    # Now that we've gotten these methods written out, it is time do a bit of refactoring. 
    # Rather than pushing self into the @@all variable inside of #initialize, 
    # we're extract this action into its own method. Call this method #save. 
    # The method should handle the task of pushing self into @@all. Once written, 
    # update your code in #initialize so that it uses #save.

    def save
      @@all << self
    end

     # What happens if we want to clear out our list of existing dogs? 
    # It is not at all uncommon to want to "reset" or "restart" our program. 
    # You'll be building a class method, .clear_all, that does just that. 
    # This method should operate on the @@all array of existing dogs and empty that array. 
    # Hint: look up the Array#clear method.
    
    def self.clear_all
        @@all.clear
    end

  end