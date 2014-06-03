chai = require 'chai'
# chai.should()
expect = chai.expect

{Converter} = require '../src/pig-latin'

describe 'PigConverter', ->
  converter1 = converter2 = null
  it 'should exist', ->
    converter1 = new Converter 'word'
    expect(converter1.old_word).to.equal 'word'