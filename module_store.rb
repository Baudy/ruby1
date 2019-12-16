module Tools
  def sayhi(name)
    puts "hello #{name}"
  end
  def saybye(name)
    puts "goodbye #{name}"
  end
end

module Ergast
  def standings(year)
    url = "http://ergast.com/api/f1/#{year}/driverStandings.json"
    data = JSON.parse(open(url).read)
    standingsArray = []
    standings = data['MRData']['StandingsTable']['StandingsLists'][0]['DriverStandings']
    standings.each do |driver|
      standingsArray.push [driver['position'], driver['Driver']['givenName'], driver['Driver']['familyName'], driver['Constructors'][0]['name'], driver['points']].join(' ')
      #puts [driver['position'], driver['Driver']['givenName'], driver['Driver']['familyName'], driver['Constructors'][0]['name'], driver['points']].join(' ')
      return standings
    end
  end
end
