app = require("express")()
http = require("http").Server app
io = require("socket.io") http
bodyParser = require("body-parser")
uuid = require "uuid"
path = require "path"

GameService = require "./GameService"

app.use (bodyParser.urlencoded {extended: true})
app.use bodyParser.json()

app.get "/", (req, res) ->
  res.redirect "/game/" + uuid.v1()

app.get "/game/:id", (req, res) ->
  res.sendFile __dirname + "/test.html"

http.listen 3000, ->
  console.log "listening on 3000"

io.on "connection", (socket) ->
  roomId = path.basename socket.handshake.headers.referer
  gameService.connect roomId, socket

gameService = new GameService()
