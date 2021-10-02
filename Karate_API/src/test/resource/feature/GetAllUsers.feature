Feature: Validate get request

Scenario: Verify fetching all employees

#Given url 'http://api.openweathermap.org/data/2.5/weather?q=London&appid=c8f5aa2dfb36cf05aea3003ce57e3922'
Given url 'https://reqres.in/api/users?page=2'
When method get
Then status 200
#And def emp = response.data[0].employee_name
#Then match emp contains 'Tiger Nixon' 
#And print emp
#And def Id = get response.data[*].id
#Then match Id contains 24
#And print Id