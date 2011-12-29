formatter = "%s %s %s %s"
puts formatter % ["one", "two", "three", "four"]
puts formatter % [true, false, false, true]  
puts formatter % [formatter, formatter, formatter, formatter]
puts formatter % [
      "I had this thing.",
      "That you could type up right.",
      "But it didn't sing.",
      "So I said goonight."
  ]                       
  