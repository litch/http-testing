# http-testing

# Server

Start the server using `vertx run server.rb`

# Client

Run `bundle install`.
Run `ruby client.rb`

# Output

## Client
I, [2015-07-19T22:17:39.910089 #30474]  INFO -- : get http://localhost:8080/
D, [2015-07-19T22:17:39.910149 #30474] DEBUG -- request: User-Agent: "Faraday v0.9.1"
I, [2015-07-19T22:17:40.003315 #30474]  INFO -- Status: 200
D, [2015-07-19T22:17:40.003369 #30474] DEBUG -- response: content-type: "text/plain"
content-length: "147"
[Finished in 0.3s]

## Server
☺ ~/code/http-testing% vertx run server.rb
Succeeded in deploying verticle 
Headers are
User-Agent: Faraday v0.9.1
Accept-Encoding: gzip;q=1.0,deflate;q=0.6,identity;q=0.3
Accept: */*
Connection: close
Host: localhost:8080
The total body received was 0 bytes
