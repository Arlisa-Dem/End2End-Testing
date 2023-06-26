@e2e @api_test
Feature: Get the room and validate

  Scenario: send get request by id
    Given send the request by id
    Then validate the body
