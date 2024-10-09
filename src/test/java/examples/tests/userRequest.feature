Feature: User API Test
  Background:
    Given url "https://petstore.swagger.io/"
    And print "Opening USER API Test"

  Scenario: Add New User to Store
    * def reqBody = { "id": 04, "username": "adelyas", "firstName": "adelya", "lastName": "putri", "email": "adelyas@mail.com", "password": "12345", "phone": "085278739822", "userStatus": 1}
    When url "https://petstore.swagger.io/v2/user"
    And request reqBody
    And method post
    Then print response
    And status 200

  Scenario: Find User by Username
    When url "https://petstore.swagger.io/v2/user/adelyas"
    And method get
    Then print response
    And status 200

  Scenario: Login
    When url "https://petstore.swagger.io/v2/user/login?username=adelya&password=12345"
    And method GET
    Then print response
    And status 200

  Scenario: Logout
    When url "https://petstore.swagger.io/v2/user/logout"
    And method GET
    Then print response
    And status 200

  Scenario: Update Existing User
    * def reqBody = {"id": 04, "username": "adelyas", "firstName": "adelya", "lastName": "putri", "email": "adelyas@mail.com", "password": "12345", "phone": "085278739822", "userStatus": 1}
    When url "https://petstore.swagger.io/v2/user/adelyas"
    And request reqBody
    And method put
    Then print response
    And status 200

  Scenario: Delete User
    When url "https://petstore.swagger.io/v2/user/adelyas"
    And method delete
    Then print response
    And status 200
