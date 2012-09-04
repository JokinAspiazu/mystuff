class Parent #creates the Parent class

  def override () #defines the override function for the parent class
    puts "PARENT override ()"
  end
  
  def implicit () #defines the implicit function for the parent class
    puts "PARENT implicit ()"
  end
  
  def altered () #defines the altered function for the parent class
    puts "PARENT altered ()"
  end
  
end

class Child < Parent #defines that child inherits from parent

  def override() #defines child own override function
    puts"CHILD override()"
  end

  def altered() #defines child own override function
    puts "CHILD, BEFORE PARENT altered()"
    super() #and here we call parents three functions
    puts "CHILD, AFTER PARENT altered()"
  end
end

dad = Parent.new()
son = Child.new()

dad.implicit()
son.implicit()

dad.override()
son.override()

dad.altered()
son.altered()