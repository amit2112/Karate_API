Feature: Validate get request

Scenario: Verify fetching an employees

Given url 'https://reqres.in/api/users/2'
When method get
Then status 200
