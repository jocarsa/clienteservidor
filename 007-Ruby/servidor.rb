require 'webrick'
require 'json'

json_data = { mensaje: 'Hola mundo desde el servidor' }

server = WEBrick::HTTPServer.new(Port: 8000)

server.mount_proc '/' do |req, res|
  # Set CORS headers
  res['Access-Control-Allow-Origin'] = '*' # Allow requests from any origin
  res['Access-Control-Allow-Methods'] = 'GET, POST, PUT, DELETE, OPTIONS' # Allow specific HTTP methods
  res['Access-Control-Allow-Headers'] = 'Content-Type' # Allow specific headers
  res['Access-Control-Max-Age'] = '3600' # Cache preflight response for 1 hour
  res['Content-Type'] = 'application/json'
  res.body = json_data.to_json
end

trap('INT') { server.shutdown }

server.start