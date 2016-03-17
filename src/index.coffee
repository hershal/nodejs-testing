app = require("express")()
http = require("http").Server app
io = require("socket.io") http
bodyParser = require("body-parser")
uuid = require "uuid"

User = require "./User"
UserRegistry = require "./UserRegistry"

app.use (bodyParser.urlencoded {extended: true})
app.use bodyParser.json()

app.get "/", (req, res) ->
  res.redirect "/" + uuid.v1()

app.get "/:id", (req, res) ->
  res.send("<h1>requested #{req.params.id}")

http.listen 3000, ->
  console.log "listening on 3000"

io.on "connection", (socket) ->
  console.log "user connected"
  users.addUser(socket)
