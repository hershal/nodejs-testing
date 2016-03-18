class User
  constructor: (@socket) ->
    @socket.on "game-play", (data) ->
      console.log "US::DidPlay:: " + data.played

module.exports = User
