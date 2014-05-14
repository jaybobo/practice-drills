util = require 'util'
rl = require 'readline'

prompts = rl.createInterface
  input: process.stdin,
  output: process.stdout

grandmaResponse = (user_input) ->
  inputCapitals = user_input.toUpperCase()

  if user_input == ""
    "*Grandma continues watching TV*"
  else if user_input == inputCapitals
    "NOT SINCE 1987"
  else
    "SPEAK UP SONNY!!!"

grandmaEngine = ->
  console.log "*****\nWelcome to Deaf Grandma\n*****"

  prompts.question "Ask Grandma a question: ",
    (ask) ->
      if ask
        console.log(grandmaResponse(ask))
        grandmaEngine()
      else if ask == ""
        console.log(grandmaResponse(ask))
        process.exit()

grandmaEngine()

