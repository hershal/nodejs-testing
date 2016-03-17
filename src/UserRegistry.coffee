User = require "./User"

class UserRegistry
  constructor: () ->
    @users = {}

  addUser: (socket) ->
    newUser = new User(socket)
    @users[socket.id] = newUser
    newUser.socket.on "disconnect", () =>
      delete @users[newUser.handleDisconnect()]

  removeUser: (user) ->
    users

module.exports = UserRegistry
