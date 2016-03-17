User = require "./User"

class UserRegistry
  constructor: () ->
    @users = {}

  connect: (socket) ->
    newUser = new User(socket)
    @users[socket.id] = newUser
    newUser.socket.on "disconnect", () =>
      delete @users[newUser.handleDisconnect()]

module.exports = UserRegistry
