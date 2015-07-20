require 'faraday'

conn = Faraday.new('http://localhost:8080') do |builder|
  builder.request  :retry
  builder.response :logger
  builder.adapter  :net_http
end

conn.get('/')
