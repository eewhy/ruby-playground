# calculation password_generator

# Print out a command followed by two numbers
# the command will be either: ADD, SUB, DIV, or MUL
# the numers will be two numbers btw 0 - 100

COMMANDS = ["SUB", "ADD", "DIV", "MUL"]
output =""

10.times do
  number_1 = rand(100) + 1
  number_2 = rand(100) + 1
  output << "#{COMMANDS.sample} #{number_1} #{number_2}\n"
end

File.write('test_data.txt',output)
