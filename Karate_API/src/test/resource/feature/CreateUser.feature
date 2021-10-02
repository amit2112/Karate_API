Feature: Validate Post request

@FirstTest
Scenario Outline: Verify Creating a user

Given url '<url>'
And request {"name": "Amit", "job": "QA"}
When method post
Then status 201


Examples:
|url|
|https://reqres.in/api/users|

@SecondTest
Scenario: Verify fetching all employees

Given url 'https://reqres.in/api/users?page=2'
When method get
Then status 200
And def emp = response.data[0].first_name
Then match emp contains 'Michael' 
And print emp
And def Id = get response.data[*].id
Then match Id contains 7
And print Id

And karate.write(response, "Response.txt")