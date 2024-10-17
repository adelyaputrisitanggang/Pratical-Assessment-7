Feature: Get User Hash and Uname

  Background:
    * url 'https://api.spoonacular.com/'
      * def apiKey = 'b2f826ffd13247d9ae68ad05a138b25e'

  Scenario: Get username and hash from connect user
    Given path 'users/connect'
    And header Content-Type = 'application/json'
    And param apiKey = apiKey
    And request {"username": "adelyas", "firstName": "adelya", "lastName": "putri", "email": "adelyas1705@gmail.com"}
    When method post
    Then status 200
    And print response