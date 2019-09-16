import Foundation

var locations = ["North America" : ["USA" : ["Mountain View"]]]

print(locations)

/*
 Cities to add:
 Bangalore (India, Asia)
 Atlanta (USA, North America)
 Cairo (Egypt, Africa)
 Shanghai (China, Asia)
 */

locations["North America"]?["USA"]?.append("Atlanta")
print(locations)
locations["Asia"] = ["India": ["Banglore"]]
print(locations)
locations["Asia"]?["China"] = ["Shanghai"]
print(locations)
locations["Africa"] = ["Egypt": ["Cairo"]]
print(locations)
/*
 Print the following
 1. A list of all cities in the USA in
 alphabetical order. Hint: use the array sorted() method
*/
 
let sortedLocations = locations["North America"]?["USA"]?.sorted()

for city in sortedLocations! {
    print(city)
}

/*
 2. All cities in Asia, in alphabetical
 order, next to the name of the country.
 In your output, label each answer with a number
 so it looks like this:
 1
 American City
 American City
 2
 Asian City - Country
 Asian City - Country
 */

var asiaCities = [String]()
for (country, cities) in locations["Asia"]! {
    let cityCountry = "\(cities[0]) - \(country)"
    asiaCities.append(cityCountry)
}
for city in asiaCities.sorted() {
    print(city)
}
