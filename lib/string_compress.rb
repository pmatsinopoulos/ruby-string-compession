# frozen_string_literal: true

def string_compress(str)
  result = ''
  last_char_pos = -1
  str.each_char do |char|
    if result == ''
      result = "#{char}1"
      last_char_pos = -2
    elsif char == result[last_char_pos]
      new_counter = (result[last_char_pos + 1..].to_i + 1).to_s
      result[last_char_pos + 1..] = new_counter
      last_char_pos = -(new_counter.length + 1)
    else
      result = "#{result}#{char}1"
      last_char_pos = -2
    end

    return str if result.length > str.length
  end
  result
end
