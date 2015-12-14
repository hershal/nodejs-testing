should = require 'should'

describe "Writing Node with Coffeescript", ->
  it "basic check to check that I can check", -> true
  it "check that true is true and false is not true", ->
    (true).should.be.true()
    (false).should.not.be.true()
