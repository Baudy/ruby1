#dealing with files

File.open("employees.txt", "r") do |file| # r to read the file
  puts file
  puts "------"
  puts file.read()
  file.rewind()
  puts "------"
  puts file.read().include? "Jim"  #not sure why this isn't working
  file.rewind()
  puts "------"
  puts file.readline()
  puts file.readline() # reads the next line
  file.rewind()
  puts file.readchar() #one character at a time
  puts file.readchar()
  puts file.readchar()
  file.rewind()
end

puts "\n---------------------"

File.open("employees.txt", "r") do |file|
  for line in file.readlines() #readlines builds an array of lines
    puts line
  end
end

puts "\n---------------------"

#the above methods ensure the file is closed at the end of the method
#doing it as below, make sure you close the file manually after you're done

file = File.open("employees.txt", "r")
puts "...ooo000ooo..."
puts file.read
puts "...ooo000ooo..."

file.close()


#Mode |  Meaning
#-----+--------------------------------------------------------
#"r"  |  Read-only, starts at beginning of file  (default mode).
#-----+--------------------------------------------------------
#"r+" |  Read-write, starts at beginning of file.
#-----+--------------------------------------------------------
#"w"  |  Write-only, truncates existing file
#     |  to zero length or creates a new file for writing.
#-----+--------------------------------------------------------
#"w+" |  Read-write, truncates existing file to zero length
#     |  or creates a new file for reading and writing.
#-----+--------------------------------------------------------
#"a"  |  Write-only, starts at end of file if file exists,
#     |  otherwise creates a new file for writing.
#-----+--------------------------------------------------------
#"a+" |  Read-write, starts at end of file if file exists,
#     |  otherwise creates a new file for reading and
#     |  writing.
#-----+--------------------------------------------------------
#"b"  |  Binary file mode (may appear with
#     |  any of the key letters listed above).
#     |  Suppresses EOL <-> CRLF conversion on Windows. And
#     |  sets external encoding to ASCII-8BIT unless explicitly
#     |  specified.
#-----+--------------------------------------------------------
#"t"  |  Text file mode (may appear with
#     |  any of the key letters listed above except "b").

#writing to files

File.open("employees.txt", "a") do |file| #append only
  file.write("\nOscar, Accounting")
end
