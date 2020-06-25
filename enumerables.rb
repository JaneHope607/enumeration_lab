united_kingdom = [
  {
    name: "Scotland",
    population: 5295000,
    capital: "Edinburgh"
  },
  {
    name: "Wales",
    population: 3063000,
    capital: "Cardiff"
  },
  {
    name: "England",
    population: 53010000,
    capital: "London"
  },
  {
    name: "Northern Ireland",
    population: 1800000,
    capital: "Belfast"
  }
]


p united_kingdom.reduce(0) {|total, country| total + country[:population]}

p united_kingdom.map {|country| country[:population]}

character_countries = united_kingdom.select do |country|
    country[:capital].length == 7
end

p character_countries.map {|country| country[:name]}

