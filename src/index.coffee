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
  res.redirect "/game/" + uuid.v1()

app.get "/game/:id", (req, res) ->
  res.sendFile __dirname + "/test.html"
  # res.send("<h1>requested #{req.params.id}")

http.listen 3000, ->
  console.log "listening on 3000"

io.on "connection", (socket) ->
  users.connect(socket)

users = new UserRegistry()
