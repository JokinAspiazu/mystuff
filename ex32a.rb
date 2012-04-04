def letssleep
# 30 sec sleep with fancy output
asleep=['Z', 'z', 'z', '.', ' ']
  for i in (0..6)
    asleep.each do |zet|
      print "#{zet}"
      sleep 1
    end
  end
end

letssleep
puts 'Done!'


