Feature: Test Get Meal Plan

  Background:
    * url 'https://api.spoonacular.com/'
    * def apiKey = 'b2f826ffd13247d9ae68ad05a138b25e'
    * def hash = 'aa6648f1586d3fdfd32d82a7bc0d7ffbe898d515'
    * def username = 'adelyas'
    * def startDate = '2024-09-25'

  Scenario: Ingredient Search
    Given path 'food/ingredients/search?query=apples&number=2&sort=calories&sortDirection=desc'
    And header Content-Type = 'application/json'
    And param apiKey = apiKey
    And param hash = hash
    When method get
    Then status 200
    And print response


  Scenario: Search Product
    Given path 'https://api.spoonacular.com/food/ingredients/search?query=banana&number=2&sort=calories&sortDirection=desc'
    And header Content-Type = 'application/json'
    And param apiKey = apiKey
    And param hash = hash
    When method get
    Then status 200
    And print response

  Scenario: Get Ingredient Substitutes
    Given path 'https://api.spoonacular.com/food/ingredients/substitutes?ingredientName=butter'
    And header Content-Type = 'application/json'
    And param apiKey = apiKey
    And param hash = hash
    When method get
    Then status 200
    And print response

  Scenario: Get Ingredient Substitutes by ID
    Given path 'https://api.spoonacular.com/food/ingredients/1001/substitutes'
    And header Content-Type = 'application/json'
    And param apiKey = apiKey
    And param hash = hash
    When method get
    Then status 200
    And print response
