# Rock: id = 0
# Lizard: id = 1
# Spock: id = 2
# Scissor: id = 3
# Paper: id = 4

# this hand wins against out, loses against in
class HandNode
  constructor: (@in, @out) ->

class HandGraph
  constructor: () ->
    @hands = {}
    @hands[0] = new HandNode([4, 2], [3, 1])
    @hands[1] = new HandNode([0, 3], [4, 2])
    @hands[2] = new HandNode([1, 4], [0, 3])
    @hands[3] = new HandNode([2, 0], [1, 4])
    @hands[4] = new HandNode([3, 1], [2, 0])

class Hand

class Rock
  constructor: () ->
    id = 0
class Lizard
  constructor: () ->
    id = 1
class Spock
  constructor: () ->
    id = 2
class Scissor
  constructor: () ->
    id = 3
class Paper
  constructor: () ->
    id = 4

module.exports = {HandNode, HandGraph, Hand, Rock, Lizard, Spock, Scissor, Paper}
