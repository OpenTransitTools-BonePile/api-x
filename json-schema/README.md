**Services**

Stops
 `show agencies & routes serving (with links to stop scheules, tracker info), stop geometry, stop name and address, 
 amenities, small map of the stop, alerts, etc...`
 
Routes
 `show route name and agency info, route directions`
 
Route Directions
 `show route direction names`
 

Notes:
 1. All services have date parameter, which defaults to today.  This allows the service to show variations in the future 
 (or past).
 1. All services have limit (defaults to 10) and offset (defaults to 0)
 1. Use [HAL](https://github.com/mikekelly/hal_specification/wiki/APIs) ala https://apidocs.goabout.com
 1. 