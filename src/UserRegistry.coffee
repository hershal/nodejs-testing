class UserRegistry
  constructor: () ->
    @users = {}

  addUser: (socket) ->
    newUser = new User(socket)
    users[socket.id] = newUser
    newUser.socket.on "disconnect", () ->
      newUser.handleDisconnect()
      delete users[socket.id]

  removeUser: (user) ->
    users

module.exports = UserRegistry
