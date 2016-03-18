User = require("./User")

class GameRoom
  constructor: (@roomId) ->
    @users = {}
    console.log "GR::Created " + @roomId

  disconnect: (socket) ->
    console.log "GR::DidDisconnect " + socket.id
    delete @users[socket.id]

  connect: (socket) ->
    console.log "GR::DidConnect: " + socket.id
    @users[socket.id] = new User(socket)

  userCount: ->
    Object.keys(@users).length

module.exports = GameRoom
