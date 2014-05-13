# Deaf Grandma 
 
##Learning Competencies 

* Diagram the relationship between the 'real world' and 'code'.
* Use variables to maintain program state
* Use nested loops
* Use conditionals


##Summary

In this challenge, you will model a conversation with a grandmother who's a little hard of hearing.  Here are the rules that your program should follow.

* Running the program begins the conversation, and the user should be prompted to say something to Grandma.

* Shouting is the only way for Grandma to hear you; shout by typing in all caps (e.g., "HI, GRANDMA.").

* If you say something to Grandma without shouting, she will shout back and tell you to speak up.  If you say, "How are you, Grandma?", Grandma replies, "HUH!? SPEAK UP, SONNY?".

* If you shout at her, she responds by shouting back.  If you say, "HOW ARE YOU, GRANDMA?", Grandma replies, "NO, NOT SINCE 1983!"

*  The conversation ends (i.e., the program exits) only when you say "I LOVE YA, GRANDMA, BUT I'VE GOT TO GO."


##Releases

#### Release 0: Working with input and output.

In the `source/deaf_grandma.rb` file, start by verifying that you can echo user input; use the [`gets`](http://www.ruby-doc.org/docs/Tutorial/part_02/user_input.html) method to prompt the user for input and then use the [`puts`](http://www.ruby-doc.org/core-2.1.0/IO.html#method-i-puts) method to output it to the screen.

Run your code via the command line (Terminal) like so:

```
$ ruby deaf_grandma.rb
```


#### Release 1: Conversing with Grandma

Write the `deaf_grandma` method to model the conversation rules above.

#### Release 2: A second way to end the conversation 

Add a second way to end the conversation.  You can now also end the conversation by silently slipping away.  Model this behavior as entering two empty strings *in a row* when prompted to say something to Grandma.

#### Release 3: Other scenarios (optional)

Think of a crazy scenario and write a method `deaf_grandma_crazy` which models that scenario.  For example, how might the following real-world scenarios be modeled in your program?

* How would you model giving Grandma a hug?
* What if Grandma's behavior changes depending on her mood? Maybe she's happy in the morning but grumpy at night.
* What if Grandma wants to pinch your cheeks every time you visit?

##Optimize Your Learning 

Reflect on your code: 

* Ruby style favors writing concise, single-purpose methods.  Are you writing one gigantic method or breaking down your program into logical units?
* Is your code easy for humans to read?  Could another of your cohort mates read through your code and know what each line does?

##Resources

* [User input with 'gets'](http://www.ruby-doc.org/core-2.1.0/IO.html#method-i-puts)
* [Case statements](http://www.skorks.com/2009/08/how-a-ruby-case-statement-works-and-what-you-can-do-with-it/)
* [Loop method](http://ruby-doc.org/core-1.9.3/Kernel.html#method-i-loop).
