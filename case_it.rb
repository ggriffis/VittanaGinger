require './lib/name_case_converter'

puts "Please enter a comma-delimited list of names.  If you would rather pass in the name of a file that contains a comma-delimited list of names, please enter F. Then hit enter."
entry = gets.chomp
if entry.upcase == "F"
  puts "Please enter the name of a text file (full path unless running from within the same directory as the file): "
  file_name = gets.chomp
  file = File.open(file_name, "r")
  array_of_names = file.read.chomp.split(',')
  file.close
else
  array_of_names = entry.split(',')
end

an_array = NameCaseConverter.new.convert_names_to_proper_case(array_of_names)
puts an_array.join(',')