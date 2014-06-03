util = require 'util'
rl = require 'readline'

prompts = rl.createInterface
  input: process.stdin,
  output: process.stdout

Singleton =
  word_holder: []

compareFunction = (x,y) ->
  if x.toLowerCase() < y.toLowerCase()
    return -1
  if x.toLowerCase() > y.toLowerCase()
    return 1
  return 0

dictionarySort = (arr) ->
  arr.sort(compareFunction)

wordRequester = ->
  prompts.question "Type a word: ",
    (word) ->
      if word
        console.log("You've added: #{word}")
        Singleton.word_holder.push word
        wordRequester()
      else if word == ""
        sortedWords = dictionarySort(Singleton.word_holder)
        console.log "\nCongratulations! Your dictionary has #{sortedWords.length} words:"
        console.log "#{word}" for word in sortedWords
        process.exit()
      else
        console.log("Here we are")

userInterface = ->
  console.log("Welcome to Word Sorter\n")
  wordRequester()

userInterface()