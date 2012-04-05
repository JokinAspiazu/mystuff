def letssleep (sec)

  zulu=['z', 'Z', 'z', '.', ' ']
  j = 0 ; i = 0
  while j < sec
    if i > 4
      i = 0
      end
    sleep 1
    print zulu[i]
    i = i + 1 ; j = j + 1
  end
  puts " "
end

puts "test with 10"
letssleep (10)


