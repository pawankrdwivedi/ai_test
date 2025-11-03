Feature: /employees endpoint tests
  Verify positive and negative behavior of /employees API

  Scenario: Successful GET request to /employees
    When I send a GET request to "/employees"
    Then I should receive a 200 OK response
    And the response should contain a list of employees

  Scenario: Unauthorized access to /employees
    Given I have an invalid API token
    When I send a GET request to "/employees"
    Then I should receive a 401 Unauthorized response

Feature: /employee/{id} endpoint tests
  Verify positive and negative behavior of /employee/{id} API

  Scenario: Successful GET request to /employee/{id}
    Given an employee with id "1" exists
    When I send a GET request to "/employee/1"
    Then I should receive a 200 OK response
    And the response should contain the employee data for id "1"

  Scenario: GET request to /employee/{id} with non-existent id
    When I send a GET request to "/employee/9999"
    Then I should receive a 404 Not Found response

  Scenario: GET request to /employee/{id} with invalid id format
    When I send a GET request to "/employee/abc"
    Then I should receive a 400 Bad Request response

Feature: /create endpoint tests
  Verify positive and negative behavior of /create API

  Scenario: Successful POST request to /create
    Given I have valid employee data
    When I send a POST request to "/create" with the employee data
    Then I should receive a 201 Created response
    And the response should include the created employee's id

  Scenario: POST request to /create with missing required fields
    When I send a POST request to "/create" without "name"
    Then I should receive a 400 Bad Request response
    And the response should contain "Missing required parameter: name"

  Scenario: POST request to /create with invalid data types
    When I send a POST request to "/create" with "age" as "twenty"
    Then I should receive a 422 Unprocessable Entity response

Feature: /update/{id} endpoint tests
  Verify positive and negative behavior of /update/{id} API

  Scenario: Successful PUT request to /update/{id}
    Given an employee with id "21" exists
    When I send a PUT request to "/update/21" with updated employee data
    Then I should receive a 200 OK response
    And the response should confirm the update

  Scenario: PUT request to /update/{id} with non-existent id
    When I send a PUT request to "/update/9999" with updated employee data
    Then I should receive a 404 Not Found response

  Scenario: PUT request to /update/{id} with invalid id format
    When I send a PUT request to "/update/abc" with updated employee data
    Then I should receive a 400 Bad Request response

Feature: /delete/{id} endpoint tests
  Verify positive and negative behavior of /delete/{id} API

  Scenario: Successful DELETE request to /delete/{id}
    Given an employee with id "2" exists
    When I send a DELETE request to "/delete/2"
    Then I should receive a 200 OK response
    And the response should confirm the deletion

  Scenario: DELETE request to /delete/{id} with non-existent id
    When I send a DELETE request to "/delete/9999"
    Then I should receive a 404 Not Found response

  Scenario: DELETE request to /delete/{id} with invalid id format
    When I send a DELETE request to "/delete/abc"
    Then I should receive a 400 Bad Request response
```# BASE URL: https://dummy.restapiexample.com/api