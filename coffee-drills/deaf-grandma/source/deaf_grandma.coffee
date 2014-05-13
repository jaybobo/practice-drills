#prompt = require 'prompt'

#prompt.start()

# getUserInput = ->
#   prompt.get(
#     ['input']
#     ,
#     ( err , result ) ->
#       result.input
#   )


util = require 'util'


grandmaResponse = (user_input) ->
  inputText = "#{user_input}"
  inputCapitals = "#{user_input}".toUpperCase()

  if inputText == ""
    console.log "*Grandma continues watching TV*"
  else if inputText == inputCapitals
    console.log "NOT SINCE 1987"
  else
    console.log "SPEAK UP SONNY!!!"


titleScreen = ->
  console.log "*****\nWelcome to Deaf Grandma\n*****"


getuserInput = ->
  process.stdin.setEncoding('utf8')
  process.stdin.resume()
  process.stdin.on('data',
    (text) ->
        text.toString().trim()
      #return text only if new line
      #if ^^ pass to grandma engine
  )


grandmaEngine = ->
  counter = 0
  titleScreen()

  until counter == 2
    input = getUserInput()
    grandmaResponse(input)
    process.exit() if counter == 2
    counter += 1 if input == ""

grandmaEngine()

