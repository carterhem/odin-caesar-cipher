def caesar_cipher(string, number) 
  new_string = ""
  string.each_byte do |i|
    new_num = i + number
    case i
    when 33
      # when exclamation mark found return it as is
      i = 33
      # puts "i = 33"
    when 65..90
      # puts "i = upper"
      if new_num > 90
        j = new_num - 90
        i = 64 + j
      else
        i = new_num
      end
    when 97..122
      # puts "i = lower"
      if new_num > 122
        j = new_num - 122
        i = 96 + j
      else
        i = new_num
      end
    end
    new_string << i
  end
  p new_string
end

caesar_cipher("What a string!", 5)
caesar_cipher("Try This!", 3)
