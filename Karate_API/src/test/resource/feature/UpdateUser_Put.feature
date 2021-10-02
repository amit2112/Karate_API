Feature: Validate PUT request

Scenario Outline: Verify Updating a user

Given url '<url>'
And request {"name": "Amit", "job": "DEV"}
When method put
Then status 200


Examples:
|url|
|https://reqres.in/api/users/286|
