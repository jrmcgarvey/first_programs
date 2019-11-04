def poll(preferences)
  loop do
    puts "Please enter 1 if you prefer #{preferences[0]} or 2 for #{preferences[1]}."
    result = gets.chomp.strip.to_i
    if result == 1 || result == 2
      return result
    end
  end  
end


ice_creams = ["chocolate ice cream","vanilla ice cream"]
protein = ["steak","tofu"]
starch = ["rice","pasta"]

i_c = poll(ice_creams)
pro = poll(protein)
sta = poll(starch)

puts "Summary:"
puts "You prefer #{ice_creams[i_c-1]}, #{protein[pro-1]}, and #{starch[sta-1]}."
