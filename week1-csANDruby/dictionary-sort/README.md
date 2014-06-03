# Dictionary Sort 
 
##Learning Competencies 

* Read user input
* Write to user output
* Store and access data in a data structure (arrays)
* Sort a data structure (array) using common sorting algorithms
* Choose an optimal sorting algorithm based on complexity, memory, and other factors
* Use Ruby Docs to effectively research existing Ruby methods.

##Summary 

 Sort an array of words typed into the command line.

It should work something like this

```text
$ ruby dictionary_sort.rb
> Type a word:
> hyperbole
> Type another word (or press enter to finish):
> fantasmagoria
> Type another word (or press enter to finish):
> xanthate
> Type another word (or press enter to finish):
> polysaccharide
> Type another word (or press enter to finish):
>
> Congratulations! Your dictionary has 4 words:
> fantasmagoria
> hyperbole
> polysaccharide
> xanthate
```

##Releases

###Release 0 : Store user input

Write a program that asks the user to type as many words as they want (one word per line, continuing until they press `Enter` on an empty line).

It should store those words in an array.

<cite>Source: Chris Pine, [Learn to Program](http://pine.fm/LearnToProgram/)</cite>


###Release 1: Sort and print

When the user presses `Enter` on an empty line, it should repeat the entered words back (print them to the console) in alphabetical order.  

It should ignore case for sorting: `apple` should come before `Bear`, and it should still print out the words in their original case.

Make sure to test your program thoroughly, both internally and from the user interface.  What happens if the user inputs a number or an empty string?

<!-- ##Optimize Your Learning  -->
 
##Resources

* Learn about various [Sorting Algorithms](http://en.wikipedia.org/wiki/Sorting_algorithm)
