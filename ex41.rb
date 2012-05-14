de prompt()
  print "> "
end

def death()
  quips = ["You died. You kinda suck at this.",
    "Nice job, you died... jackass.",
    "Such a Luser.",
    "I have a small puppy that's better at this."]
  puts quips[rand(quips.length())]
  Process.exit(1)
end

def central_corridor()
  puts "The Gothons of Planet Percal #25 have invaded your ship and destroyed"
  puts "your entire crew. You are the last surviving member and your last"
  puts "mission is to get the neutron destruct bomb from the Weapons Armory,"
  puts "put it on the bridge, and blow the ship up after getting into an "
  puts "escape pod."
  puts "\n"
  puts "You're running down the central corridor to teh Weapons Armory when"
  puts "a Gothon jumps out, red scaly skin, dark grimly teeth, and evil clown costume"
  puts "flowing around his hate filled body. He's blockingteh door to the"
  puts "Armory and about to pull a weapon to blast you."
  
  prompt()
  action = gets.chomp()
  
  is action == "shoot!"
    puts "Quit on the draw you yank out your blaster and fire it at the Gothon"
    puts "His clown costume is flowing and moving around his body, wich throws"
    puts "off your aim. Your laser hits his costume but misses him entirely. This"
    puts "makes him fly into an insane rage and blast you repeteadly in the face until"
    puts "you are dead. Then he eats you"
    return :death
    
  elsif action == "dodge!"
    puts "like a world class boxer you dodge, wave, slip and slide right"
    puts "as the Gothon's blaster crancks a laser past your head."
    puts "In the middle of your artful dodge your foot slips and you"
    puts "bang your head on the metal wall andpass out."
    puts "You wake up shortly after only to die as the Gothom stomps on"
    puts "your headand eats you."
    return :death
    
  elsif action == "tell a joke!"
    puts "Lucky for you they made you learn Gothon insults in teh academy"
    puts "You tell the one Gothon joke you know:"
    puts "Jander klander gromenauer..."
    puts "The Gothom stops, tries not to laugh, then bursts out laughing and can't move."
    puts "While he's laughing you run up and shoot him square in the head"
    puts "putting him down, then jump through the Weapon Armory door."
    return :laser_weapon_armory
    
  else
    puts "DOES NOT COMPUTE!"
    return central_corridor
  end
end
  