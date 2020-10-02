def line(deli)
  if deli.length == 0
    puts "The line is currently empty."
  else 
    current_line = "The line is currently:"
    deli.each_with_index do |customer, position| 
      current_line << " #{position + 1}. #{customer}"
    end
    puts current_line
  end
end

def take_a_number(line, new_customer)
  line << new_customer
  puts "Welcome, #{new_customer}. You are number #{line.length} in line."
end

def now_serving(line)
  if line.empty?
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{line.first}."
    line.shift
  end
end