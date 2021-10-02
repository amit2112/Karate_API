Feature: Validate PATCH request

Scenario Outline: Verify Updating a user

Given url '<url>'
And request {"name": "Amit", "job": "Automation"}
When method patch
Then status 200


Examples:
|url|
|https://reqres.in/api/users/286|
