app = require("express")()
http = require("http").Server app
io = require("socket.io") http

app.get "/", (req, res) ->
  res.sendFile __dirname + "/test.html"

http.listen 3000, ->
  console.log "listening on 3000"

io.on "connection", (socket) ->
  users.addUser(socket)

class User
  constructor: (@socket) ->
    console.log "user #{@socket.id} did connect"
  handleDisconnect: =>
    console.log "user #{@socket.id} did disconnect"

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

users = new UserRegistry()
