def letter?(this)
  this =~ /[[:alpha:]]/
end

def is_upper?(this)
  this =~ /[[:upper:]]/
end

def caesar_cipher(s,shift)
  #make alphabet array
  alpha = ('a'..'z').to_a
  #make alphabet to base on shift
  alpha_shift = ('a'..'z').to_a
  #shift the second alphabet based on shift number
  (0...shift).each { |_x| 
    hold = alpha_shift[0]
    alpha_shift.shift
    alpha_shift << hold
  }

  #split the string
  string = s.split('')
  #make a holder arry for the translated string
  translated_array = []

  string.each{ |x|
    if !letter?(x)
      translated_array << x
    elsif is_upper?(x)
      translated_array << alpha_shift[alpha.index(x.downcase)].upcase
    else
      translated_array << alpha_shift[alpha.index(x)]
    end
  }

  translated_array = translated_array.join('')

  translated_array
end

print caesar_cipher("What a string!", 5)