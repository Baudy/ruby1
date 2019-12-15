require "open-uri"
require "json"
require_relative "module_store.rb"
include Ergast

puts Ergast.standings("1999")



#url = "http://ergast.com/api/f1/2019/driverStandings.json"
#data = JSON.parse(open(url).read)
#standings = data['MRData']['StandingsTable']['StandingsLists'][0]['DriverStandings']
#standings.each do |driver|
#  puts [driver['position'], driver['Driver']['givenName'], driver['Driver']['familyName'], driver['Constructors'][0]['name'], driver['points']].join(' ')
#end
