zip = require("./Common").zip
GameRoom = require("./GameRoom")

class GameService
  constructor: () ->
    @games = {}
    console.log "GS::Constructed"

  createRoom: (roomId) ->
    console.log "GS::DidCreate " + roomId
    @games[roomId] = new GameRoom(roomId)
    @logRooms()

  destroyRoom: (roomId) ->
    console.log "GS::DidDestroy " + roomId
    delete @games[roomId]
    @logRooms()

  logRooms: ->
    rooms = Object.keys @games
    games = @games
    roomUserCounts = rooms.map (item, i) ->
      games[item].userCount()
    console.log "GS::Rooms " + zip rooms, roomUserCounts

  connect: (roomId, socket) ->
    if not @games[roomId]?
      @createRoom roomId
    @games[roomId].connect(socket)
    @logRooms()
    socket.on "disconnect", =>
      @disconnect roomId, socket

  disconnect: (roomId, socket) ->
    @games[roomId].disconnect socket
    @logRooms()
    if @games[roomId].userCount() <= 0
      @destroyRoom roomId

module.exports = GameService
