require 'vertx'

server = Vertx::HttpServer.new

server.request_handler do |request|
  request.response.put_header('Content-Type', 'text/plain')

  str = "Headers are\n"
  request.headers.each do |key, value|
    str << "#{key}: #{value}\n"
  end

  puts str

  request.body_handler do |body|
    puts "The total body received was #{body.length} bytes"
  end

  request.response.end(str)
end

server.listen(8080, 'localhost')
