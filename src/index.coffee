app = require("express")()
http = require("http").Server app
io = require("socket.io") http

app.get "/", (req, res) ->
  res.sendFile __dirname + "/test.html"

http.listen 3000, ->
  console.log "listening on 3000"

io.on "connection", (socket) ->
  console.log "user connected"
  socket.on "disconnect", ->
    console.log "user disconnected"
