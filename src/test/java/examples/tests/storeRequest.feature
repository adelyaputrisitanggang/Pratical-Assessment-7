Feature: Store API Test
  Background:
    Given url "https://petstore.swagger.io/"
    And print "Store API Test"

  Scenario: Return Pet Inventory
    When url "https://petstore.swagger.io/v2/store/inventory"
    And method get
    Then print response
    And status 200

  Scenario:  Order Pet
    * def reqBody = {"id": 04,"petId": 04,"quantity": 1,"shipDate": "2024-10-09T17:12:59.487Z","status": "placed","complete": true}
    When url "https://petstore.swagger.io/v2/store/order"
    And request reqBody
    And method post
    Then print response
    And status 200

  Scenario: Find Purchase Order by ID
    When url "https://petstore.swagger.io/v2/store/order/04"
    And method get
    Then print response
    And status 200

  Scenario: Delete User
    When url "https://petstore.swagger.io/v2/store/order/04"
    And method delete
    Then print response
    And status 200