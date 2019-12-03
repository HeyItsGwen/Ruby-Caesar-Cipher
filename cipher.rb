# frozen_string_literal: true

# rubocop:disable Metrics/PerceivedComplexity

def letter?(this)
  this =~ /[[:alpha:]]/
end

def upper?(this)
  this =~ /[[:upper:]]/
end

def caesar_cipher(str, shift, unshift = nil)
  # make alphabet array
  alpha = ('a'..'z').to_a
  # make alphabet to base on shift
  alpha_shift = ('a'..'z').to_a

  # shift the second alphabet based on shift number
  (0...shift).each do |_x|
    hold = alpha_shift[0]
    alpha_shift.shift
    alpha_shift << hold
  end

  # split the string
  string = str.split('')
  # make a holder arry for the translated string
  translated_array = []

  # this shifts the string if unshift has no value
  if unshift.nil?

    string.each do |x|
      translated_array << if !letter?(x)
                            x
                          elsif upper?(x)
                            alpha_shift[alpha.index(x.downcase)].upcase
                          else
                            alpha_shift[alpha.index(x)]
                          end
    end

  # this unshifts the string is unshift has any value
  else
    string.each do |x|
      translated_array << if !letter?(x)
                            x
                          elsif upper?(x)
                            alpha[alpha_shift.index(x.downcase)].upcase
                          else
                            alpha[alpha_shift.index(x)]
                          end
    end
  end
  translated_array = translated_array.join('')
  translated_array
end

# rubocop:enable Metrics/PerceivedComplexity

noshift = 'What a string!'
shift = 'Sdwp w opnejc!'

puts caesar_cipher(noshift, 100)
puts caesar_cipher(shift, 100, true)
