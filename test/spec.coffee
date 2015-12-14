sut = require '../src/index.coffee'
should = require 'should'

describe "Writing NodeJS with Coffeescript", ->
  it "basic check to check that I can check", -> true
  it "check that true is true and false is not true", ->
    (true).should.be.true()
    (false).should.not.be.true()
  it "can access exported funtions in other modules", ->
    sut.greeting("Hershal").should.equal "Hello Hershal!"
