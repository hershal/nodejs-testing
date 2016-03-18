# Rock: id = 0
# Lizard: id = 1
# Spock: id = 2
# Scissor: id = 3
# Paper: id = 4

# this hand wins against out, loses against in
class Hand
  constructor: (@in, @out) ->

class HandGraph
  constructor: () ->
    @hands = {}
    @hands[0] = new Hand([4, 2], [3, 1])
    @hands[1] = new Hand([0, 3], [4, 2])
    @hands[2] = new Hand([1, 4], [0, 3])
    @hands[3] = new Hand([2, 0], [1, 4])
    @hands[4] = new Hand([3, 1], [2, 0])
