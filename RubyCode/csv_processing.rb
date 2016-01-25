require 'csv'
#methods
#begin
def randomName 
  names = ["Alex", "Bob", "Den"]
  puts names[rand(names.size)]
end
#end


filepath = 'C:\AptanaStudioWorkspace\RubyTest\Sources\csv_input.csv'

puts "Getting data from file"

    input_file = CSV.read(filepath, { :col_sep => ';'})
    #input_file.each {|row| puts row.inspect}

puts "Total row number: #{input_file.size}" 
puts "Getting unique values from array"
puts "-" * 30

    unique = input_file.uniq
    unique.each {|row| puts row.inspect}

puts "-" * 30
puts "Total unique rows: #{ unique.size}\n\n"

# Cases

#1 - 5.1.1 - 152 IF
puts "#1 - 5.1.1   - 152 if"
puts "#2 - 5.1.1.1 - 153 else"
puts "#3 - 5.1.1.2 - 154 elsif"

if (input_file.size == unique.size)         then puts "Each row is unique"
elsif (input_file.size - unique.size == 1)  then puts "There is  #{input_file.size - unique.size} duplicate."
elsif (input_file.size - unique.size > 1)   then puts "There are #{input_file.size - unique.size} duplicates."
else  puts "There is nothing to do"
end

puts "\n#4 - 5.1.1.3 - 155 returned value\n"

message = if    (input_file.size == unique.size)      then "Each row is unique"
          elsif (input_file.size - unique.size == 1)  then "There is  #{input_file.size - unique.size} duplicate."
          elsif (input_file.size - unique.size > 1)   then "There are #{input_file.size - unique.size} duplicates."
          else   "Strange behaviour"
          end

puts message

puts "\n#5 - string methods\n"
message  = "Several weeks ago I needed to do something in Ruby that involved processing a large number of CSV files."

puts message
puts message[2..5]
puts message[2...5] 

puts message.delete("e")
puts message.include?("test")
puts message.reverse
puts message.insert(-1, " The end.")
puts message.insert(0, "Begin. ")

puts "\n#6 - 5.1.2 - 155 if modificator"
puts "test" if (2*2 == 4)


puts "\n#7 - 5.1.3 - 157 unless"
unless 2*2 == 3
  puts "2*2 <> 3"
else 
  puts "2*2 == 3"
end

puts "You see this message because condition is false" unless 2*2 == 3

puts "\n#8 randomName method"
randomName #just for testing

puts "\n#9 - 5.1.4 - 158 case"

myValue = 6
puts  case myValue
      when 1 then "one"
      when 2 then "two"  
      when 3 then "three"
      else "other"
      end

puts "\n#10 - 5.1.5 - 162 ?"
myValue2 = 4   
puts myValue2 == 1 ? "one": "other"

puts "\n#11 - 5.2.1 - 162 while & until"

puts "-"*30
puts "while loop"

i = 1

    while i<=10  #do
      puts i
      i +=1
    end
    
i = 1

    while i<=10 do puts i; i +=1 end

puts "-"*30
puts "Until loop"

i = 1

    until i > 10 #do
      puts i
      i +=1
    end

i = 1
    
    until i > 10 do puts i; i +=1 end

puts "-"*30

puts "\n#12 - 5.2.2 - 163 while & until - modificators"

i = 1
puts i += 1 while i <=10

i = 1
(puts i += 1; puts i*i) while i <=10

#input_file

puts "input_file.size = #{input_file.size}"
  #puts input_file.pop until input_file.empty?
puts "input_file.size = #{input_file.size}"

puts "\n"+"-"*30
puts "#13 - 5.2.3 - 165 for-in loop"
for rows in input_file
  puts rows.inspect
end