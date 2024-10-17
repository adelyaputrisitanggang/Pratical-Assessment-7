Feature: Get Oauth Token

  Background:
    * def clientID = 'client-id'
    * def clientSecret = 'clientSecret'
    * def tokenUrl = 'https://server-endpoint.com/oauth/token'

  Scenario: Get Oauth Token using client credentials
    Given url tokenUrl
    And request x
