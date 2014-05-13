# $ ruby dictionary_sort.rb
# > Type a word:
# > hyperbole
# > Type another word (or press enter to finish):
# > fantasmagoria
# > Type another word (or press enter to finish):
# > xanthate
# > Type another word (or press enter to finish):
# > polysaccharide
# > Type another word (or press enter to finish):
# >
# > Congratulations! Your dictionary has 4 words:
# > fantasmagoria
# > hyperbole
# > polysaccharide
# > xanthate

def dictionary_sort(arr)
  # Your code here to sort the array
  puts "Congratulations! Your dictionary has 4 words:\n"
  puts arr.sort { |x,y| x.downcase <=> y.downcase}
end

def prompt
  print "> "
end

# ...your code here to initialize the program and take user input

def interface
  word_holder = []

  until
    puts "Type a word:"; prompt
    user_input = gets.chomp
    word_holder << user_input

    if user_input == ""
      dictionary_sort(word_holder)
      exit
    end
  end
end

interface