require 'rufus/scheduler'
scheduler = Rufus::Scheduler.start_new

scheduler.every '1m' do
  require "net/http"
  require "uri"
  url = 'http://ericwright.me'
  Net::HTTP.get_response(URI.parse(url))
end
