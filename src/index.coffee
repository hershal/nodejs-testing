module.exports.greeting = greeting = (name) -> "Hello #{name}!"

module.exports.par = par = (str) -> "<p>#{str}</p>"

console.log greeting "Hershal"

http = require("http")

http.createServer (request, response) ->
  response.writeHead 200, {"Content-Type": "text/html; charset=UTF-8"}
  response.end par greeting "random person"
.listen 8080
