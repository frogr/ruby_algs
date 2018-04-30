def get_num
  print "enter a number noob >> "
  user_input = gets.chomp
  while user_input =~ /\D/
    print "enter a number noob >> "
    user_input = gets.chomp
  end
  return user_input.to_i
end

def get_string
  print "write message here noob >> "
  user_input = gets.chomp
end


def c_cipher(phrase, shift)
  arr = phrase.split("").map do |me|
    if me =~ /[A-Z]/
      me = shift % 26 + (me.ord - "A".ord) + "A".ord
      me.chr
    elsif me =~ /[a-z]/
      me = (shift % 26) + (me.ord - "a".ord) + "a".ord
      me.chr
    else
      me
    end
  end
end

shiftNum = get_num
string = get_string

puts encrypt = c_cipher(string,shiftNum).join
