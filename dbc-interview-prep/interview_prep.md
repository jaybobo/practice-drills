## Process

* Phone
* Tech
  * Pairing
  * Whiteboarding
* Culture

What should you get out of the interview process?

## Questions

### Interview Questions:
1. Name some similarities & differences between Ruby & Javascript

Both are object oriented. Both have closures. Closures allow you to package up value and pass it around regardless of scope (in ruby via procs and lambdas).

_on closures:_ (http://www.skorks.com/2010/05/closures-a-simple-explanation-using-ruby/)

2. Describe encapsulation. Open up an editor and code me an example of encapsulation.

Encapsulation is a way of isolating and protecting code. The simplest example would be.
```
class Person
  private
  attr_reader :name, :sex

  def initialize(name,sex)
    @name = name
    @sex = sex
  end
end
```

3. What is a class?
  > a taxonomic grouping of objects that may inherit attributes or characteristics OR pass these to descendants. A template.

4. What is an object?
  > Is a representation of a real world thing with attributes and behaviors

5. Write an algorithm to sort an array and describe it's worst case runtime.
  >


6. When would you use an Array or Hash? (why pick one over the other?)
  > I would use an Array for ordered elements and a hash to store key value pairs

7. What the difference between the internet & the web?
  >the internet is everything from ftp, html, tor, email...
  >the web uses html and browsers to transmit data

8. When testing, what is mocking/stubbing? What are the pros & cons?
  > mocks are objects that have a similar interface as something else
  > stubs are fake methods tha have pre-defined return values
  > you're not testing the underlying behavior of your models
  > they're confusing
  > ex (http://stackoverflow.com/questions/5164102/mocks-and-stubs)

9. Name some parts of an HTTP request and response.
  > request = a verb requesting a resource GET /images/logo.png; header with other info; optional msg body
  > response = status line stating a server response (404, 200 ok); header with content type (json, html), optional msg body

  > ex (http://en.wikipedia.org/wiki/Hypertext_Transfer_Protocol)

10. What form do the response & request take?


11. HTTP is stateless, what does that mean?
  > it doesn't hold on to the state or status of each user; but some web apps track using hidden variables in web forms or cookies

12. What technique is used to track state over HTTP?
  > cookies

13. I just pulled up the website you built and the browser is displaying a blank page. Walk me through the steps you'd take to troubleshoot the problem.
  >Check browser. see what response came back from the server.
  >Check server see if up and check logs to see if it received a request and if so, what did it serve up

14. Name 3 ways to decrease page weight.
  >use small media files
  >minify css & js
  >reduce use of large 3rd party libraries

15. Explain how prototypal inheritance works. How does it compare to class based inheritience?
  > prototype works through copying, classes instantiate new objects

16. How do you go about testing your JavaScript? What are some good design decisions that help create testable Javascript?


17. Explain AJAX in as much detail as possible
  > provides an asychronous way of making a server response while not having the client make request for a new html page or refresh.

18. Explain private, public, and protected as they apply to Ruby.
  >public methods are accessible by everyone
  >private methods are accessible only to self
  >protected methods are accessible to members of the class

19. Describe the difference between a linked list and an array.


20. Describe the difference between a get and post request?
  > get requests data
  > post makes a request to update existing data in some way

21. What's a parameterized SQL query?

### Your Life as a Developer
1. What industry sites and blogs do you read regularly?
  >HN
  >Weeklies
  >ReCode
  >StackOverflow
  >docs

2. What are a few of your favorite development tools and why?
  > brew
  > bundle
  > st2, alfred, dash, periscope
  > imagemagick
  > my custom dotfiles

3. What skills and technologies are you the most interested in improving upon or learning?
  > building good patterns
  > learning anti-patterns to stay away from in rails & js
  > meteor js prototyping
  > node stuff
  > java stuff
4. What did you learn yesterday/this week?
  > relearned that i didn't need require for non ruby files

### Front End
1. Explain what "Semantic HTML" means.
2. Name 3 ways to decrease page load time. (perceived or actual load time)
  > Move JS files to after page is loaded
  > reduce image or video file size
  > minify js and css files
  > dont unnecessarily use 3rd party libraries
3. Describe what a "reset" CSS file does and how it's useful.
  > resets all browser styling for better cross browser performance
4. Explain CSS sprites, and how you would implement them on a page or site.
5. Have you ever used a grid system, and if so, which do you prefer? why?
6. Describe event bubbling.
7. Explain how you would get a query string parameter from the browser window's URL
8. Explain the same-origin policy with regards to JavaScript


### OO Design Patterns
1. Describe encapsulation. Open up an editor and code me an example of encapsulation.
1. Desribe polymorphism. How is polymorphism accomplished in strongly typed languages? How is it accomplished in weakly typed languages?
  > http://robots.thoughtbot.com/back-to-basics-polymorphism-and-ruby
  > https://www.princeton.edu/~achaney/tmve/wiki100k/docs/Polymorphism_in_object-oriented_programming.html
1. When would you use inheritence? What are it's benefits and drawbacks?
  > your code should be DRY and conciser
1. What is a class?
  > a template, a constructor of new objects
1. What is an object? Are only instances of classes objects?
  > everything in ruby is a object

### Standard Algorithms -- You don't need to memorize these, but should be able to implement them given a description.
1. Sorting (insertion, merge, bubble)
1. Linear Search
1. Binary Search

### Data structures (be able to implement these in the language of your choice)
1. Array
1. Hash
1. Linked List, Double Linked List
  > is a node with data, and a pointer to the next node
1. Set
  > a data structure that holds unique values in no particular order
1. Find a CS 101 set of drills

### How the internet works
1. What's the difference between the internet and the web?
1. What are some common networking protocols?
  > FTP, SMTP, IMAP, HTTP
1. What is DNS?
  > domain name service, pretty symlinks for ip addresses
1. What's an IP address?
1. What is a packet?
  > a piece of a message (it holds a destination address)
1. What does routing do?
  > routes the path of messages from network to network based

### How HTTP works
1. Desribe an HTTP request and response.

1. HTTP is stateless, what does that mean?
  > it doesn't track state of a user
1. What technique is used to track state over HTTP?
  > usually cookies or hidden fields in forms
1. What is an HTTP response code? What are some common codes?
  > 404 not found, 200 ok, 301 moved permanently, 401 unauthorized, 503 service unavailable, 500 internal server error

### Plain ol' Ruby
1. Classes
1. Modules
1. Objects
1. class methods, instance methods
1. method_missing
1. Blocks/procs/lambdas
  > closures
  > http://awaxman11.github.io/blog/2013/08/05/what-is-the-difference-between-a-block/
  > http://www.codecademy.com/courses/ruby-beginner-en-L3ZCI/0/1
1. self
1. public/protected/private
1. Enumberable

### Plain ol' Javascript
1. Scope
1. `this`
    > ex. https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/this
1. Private variables
1. Module pattern
1. Object literal vs Constructor
    > doesn't have attributes or behaviors that another object can inherit
1. `fn.apply` `fn.bind` `fn.call`

### TDD
1. Can you write an rspec test outside of Rails?