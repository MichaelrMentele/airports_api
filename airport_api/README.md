# Requirement
Write and document and endpoint that *efficiently* returns a JSON response of airports
within a given radius of a location. The information in the request is:
- latitude
- longitude
- radius

# API
We want to follow the restful convention. The resource being requested is an
*airport.* Several, airports near a given point.

`url: domain/airports/nearby?lat=[lat]&long=[long]&radius=[r]`

# Example Response
{
  type: "airport"
  id: "1"
  attributes: {
    "name": "Bus Stop",
    "city": "Hell-Bourg",
    "country": "Reunion",
    "IATA/FAA": null,
    "ICAO": "HLBG",
    "lat" : "-21.06402",
    "long" : "55.518453",
    "altitude" : 3000,
    "timezone" : "Indian/Reunion"
  },
  ...
}

# Future Work: Geospatial SQL Objects

It'd be faster and slightly more accurate to use a geospatial object like that is supported by the PostGIS extension to Postgres. It is optimized to compute geodesics and work with geospatial data.
