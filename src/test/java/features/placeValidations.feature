Feature: Validate place API's

@AddPlace
Scenario Outline: Verify if place is being successfully added using AddPlaceAPI
	Given add place payload with "<name>" "<language>" "<address>"
	When user calls "addPlaceAPI" with "POST" http request
	Then the API call got success with status code 200
	And "status" in response body is "OK"
	And "scope" in response body is "APP"
	And verify place_id created maps to "<name>" using "getPlaceAPI"
Examples: 
	|name    |language |address            |
	|SHouse  |English  |World cross center |
#	|BBHouse |Spanish  |Sea cross center   |

@DeletePlace
Scenario: Verify if delete place API is working properly
	Given deletePlace payload
	When user calls "deleteplaceAPI" with "POST" http request
	Then the API call got success with status code 200
	And "status" in response body is "OK"