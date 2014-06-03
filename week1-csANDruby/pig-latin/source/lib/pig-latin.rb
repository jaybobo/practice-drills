# Your code here
# that = true

# if that
#   user_input = gets.chomp
#   that = false
# end

class PigConverter

  attr_reader :old_word, :new_word

  def initialize(word)
    @old_word = word
    @new_word = convert(word)
  end

  def convert(word)
    return word if word[0] =~ /[aeiou]/

    divided_word = word.split("")
    divided_word.each_with_index do |ltr,i|
      if ltr =~ /[aeiou]/
        front = divided_word.slice(0..i-1).join
        return divided_word[i..-1].join << front << "ay"
      end
    end

  end




end