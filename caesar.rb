def caesar_cipher(string, shift)
  charcodes_arr = string.split(//).map(&:ord).map! do |charcode| 
    if (charcode >= 65 && charcode <= 90)
      charcode += shift
      if  charcode > 90
        charcode -= 26
      else
        charcode
      end
    elsif (charcode >= 97 && charcode <=122)
      charcode += shift
      if charcode > 122
        charcode -= 26
      else
        charcode
      end
    else
      charcode
    end
  end
  shifted_letters = charcodes_arr.map { |charcode| charcode.chr }.join('')
  puts shifted_letters
end

puts 'Type some text and give me a shift factor:'
text = gets.chomp
shift = gets.chomp.to_i
shift %= 25

caesar_cipher(text, shift)

#ASCII codes {downcase} 97-122
#            {upcase}   65-90