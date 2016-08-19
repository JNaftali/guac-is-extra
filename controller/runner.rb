require 'open-uri'

# tricks learned:

#address to lat/long
# JSON.load(open("https://maps.googleapis.com/maps/api/geocode/json?address='2 sussex rd east brunswick nj 08816 usa'"))

#distance between two
# JSON.load(open("https://maps.googleapis.com/maps/api/distancematrix/json?units=imperial&origins=Washington,DC&destinations=New+York+City,NY"))

#get lat/long and postal code for current location
#JSON.parse(open('http://ipinfo.io').read)

# https://data.cityofnewyork.us/resource/swhp-yxa4.json
# JSON.load(open(blah))
# JSON.parse(open(blah).read)
