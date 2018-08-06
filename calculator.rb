# read in data from test_data.txt
# print out the operation and numbers being operated on
# and appropriate answer:
#EX:
# => adding 49 and 50 to get 99
# => Subtracting 20 and 10 to get 10


def multiply(a,b)
  puts "Multiplying #{a} and #{b} to get #{a * b}"
end

def divide(a,b)
  puts "Dividing #{a} and #{b} to get #{a / b}"
end

def subtract(a,b)
  puts "Subtracting #{a} and #{b} to get #{a - b}"
end

def add(a,b)
  puts "Adding #{a} and #{b} to get #{a + b}"
end

File.open('test_data.txt') do |file|

  file.each_line do |line|

    command_string =line.split
    command = command_string[0]
    a = command_string[1].to_i
    b = command_string[2].to_i

    case command
    when 'ADD' then add(a,b)
    when 'SUB' then subtract(a,b)
    when 'MUL' then multiply(a,b)
    when 'DIV' then divide(a,b)
    end
  end
end
