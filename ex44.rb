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
    super() #and here we call parents altered function
    puts "CHILD, AFTER PARENT altered()"
  end
end

dad = Parent.new() #defines dad as a Parent object
son = Child.new() #defines son as a Child object

dad.implicit() #runs line 8
son.implicit() #runs line 8 because implicit is not defined on child

dad.override() #runs line 4
son.override() #runs line 20

dad.altered() #runs line 12
son.altered() #runs line 24, then 12 and then 26