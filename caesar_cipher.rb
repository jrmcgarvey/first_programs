# this function will rotate the latter c forward in the alphabet by
# n letters, wrapping at z
def rotate(c,n)

  if ("a".."z").include? c
    x = c.ord
    x = x - "a".ord
    x += n
    x = x % 26
    x += "a".ord
    return x.chr
  elsif ("A".."Z").include? c
    x = c.ord
    x = x - "A".ord
    x += n
    x = x % 26
    x += "A".ord
    return x.chr
  else
    return c
  end
end

k = 0
loop do
  puts "Enter a number from 1 to 25"
  k = gets.chomp.strip.to_i
  if k >=1 && k<=25
    break
  end
end
puts "Enter a sentence to be enciphered."
sentence = gets.chomp
e_sentence = ""
sentence.chars.each do |letter|
  e_sentence += rotate(letter,k)
end
puts "The enciphered sentence is: " + e_sentence
