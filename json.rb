require "open-uri"
require "json"
#require_relative "module_store.rb"
#include Ergast


def driverstandings(year)
  url = "http://ergast.com/api/f1/#{year}/driverStandings.json"
  data = JSON.parse(open(url).read)
  standingsArray = []
  standings = data['MRData']['StandingsTable']['StandingsLists'][0]['DriverStandings']
  standings.each do |driver|
    standingsArray << [driver['position'], driver['Driver']['givenName'], driver['Driver']['familyName'], driver['Constructors'][0]['name'], driver['points']].join(' ')
  end
  return standingsArray
end

def constructorstandings(year)
  url = "http://ergast.com/api/f1/#{year}/constructorStandings.json"
  data = JSON.parse(open(url).read)
  standingsArray = []
  standings = data['MRData']['StandingsTable']['StandingsLists'][0]['ConstructorStandings']
  standings.each do |entry|
    standingsArray << [entry['position'], entry['Constructor']['name'], entry['points']].join(' ')
  end
  return standingsArray
end


puts driverstandings("1978")
puts "\n------------------\n\n"
puts constructorstandings("1978")
