**Services**

Agencies
 `Name, URL, email, BBOX of service area`

Stops
 `show agencies and routes serving (with links to stop scheules, tracker info), stop geometry, stop name and address, 
 amenities, small map of the stop, alerts, etc...`

Stop Times
 `Stop object, Routes object, Route Directions object, Scheduled n' RT arrive n' depart times,
 service date
 `

Stop Schedules
 `Stop object, Stop Times objects (list)`

Routes
 `show route name and agency info, modes, route directions, alerts`
 
Route Directions
 `Routes url, show route direction names, route stops, multi line geometry`

Links
 `Static Map Img, Interactive Map app, TransitTracker app, Alerts, Stop page, Route page, Schedule page, Timetable page, 
 Home page`


**Tests:**
  - cd api/json-schema
  - python -m SimpleHTTPServer 8000
  - http://localhost:8000/test/js/test.html


**Notes:**
 1. All services have date parameter, which defaults to today.  This allows the service to show variations in the future 
 (or past).
 1. All services have limit (defaults to 10) and offset (defaults to 0)
 1. Use [HAL](https://github.com/mikekelly/hal_specification/wiki/APIs) ala https://apidocs.goabout.com
 1. attributes parameter (filter what gets returned)
 1. GeoJSON?
 
 
Thoughts:
 1. Create schema
 1. Create bogus test data
 1. Have Java, JavaScript & Python code use Schema
 1. Show Stop Pages and Show Routes/Stops on test map
 