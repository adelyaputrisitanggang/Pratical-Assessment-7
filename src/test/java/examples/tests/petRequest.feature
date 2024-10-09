Feature: Pet API Test
  Background:
    Given url "https://petstore.swagger.io/"
    And print "Opening PET API Test"

    Scenario: Add New Pet to Store
      * def reqBody = { "id": 123, "category": { "id": 123, "name": "string"}, "name": "doggie","photoUrls": ["string"],"tags": [{"id": 123,"name": "string"}],"status": "available"}
      When url "https://petstore.swagger.io/v2/pet"
      And request reqBody
      And method post
      Then print response
      And status 200

  Scenario: Find Pet by Status
    When url "https://petstore.swagger.io/v2/pet/findByStatus?status=available"
    And method get
    Then print response
    And status 200

  Scenario: Find Pet by ID
    When url "https://petstore.swagger.io/v2/pet/123"
    And method get
    Then print response
    And status 200

  Scenario: Update Existing Pet
    * def reqBody = { "id": 123, "category": { "id": 123, "name": "testupdate" },"name": "doggie","photoUrls": ["string"],"tags": [{"id": 123,"name": "string"}],"status": "available"}
    When url "https://petstore.swagger.io/v2/pet"
    And request reqBody
    And method put
    Then print response
    And status 200

  Scenario: Delete Pet by ID
    * def reqHeader = {'api_key':'special-key'}
    When url "https://petstore.swagger.io/v2/pet/123"
    And headers reqHeader
    And method delete
    Then print response
    And status 200
