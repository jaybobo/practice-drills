# Run this file via the command line (Terminal) like so:
#   $ ruby deaf_grandma.rb
#
# Your method should get user input which corresponds
# to you saying something to Grandma. Grandma should respond
# differently depending on the input you provide, or the
# program should exit.  See the README file for detailed rules.

def deaf_grandma
  def title_screen
    puts '- ' * 8
    puts "Welcome to Deaf Grandma"
    puts '- ' * 8
  end

  def prompt
    print '> '
  end

  def granny_response(input)
    if input == ""
      puts "*Grandma continues watching 'Walker, Texas Ranger*"
    elsif input == input.upcase
      puts "NOT SINCE 1983"
    else
      puts "HUH, SPEAK UP SONNY!"
    end
  end

  def init
    counter = 0
    title_screen

    until counter == 2
      prompt
      input = gets.chomp
      counter+=1 if input == ""
      granny_response(input)
    end
  end

  init

end


deaf_grandma     # This line calls the method you're writing

