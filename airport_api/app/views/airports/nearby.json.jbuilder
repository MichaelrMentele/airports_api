json.airports @airports do |airport|
  json.type "airport"
  json.id airport.id
  json.attributes do
    json.name airport.name
    json.city airport.city
    json.country airport.country
    json.iata_faa airport.iata_faa
    json.icao airport.icao
    json.latitude airport.latitude
    json.longitude airport.longitude
    json.altitude airport.altitude
    json.timezone airport.timezone
  end
end
