class User
  constructor: (@socket) ->
    console.log "user #{@socket.id} did connect"
  handleDisconnect: =>
    console.log "user #{@socket.id} did disconnect"
    @socket.id

module.exports = User
