Feature: API
  Scenario Outline: Find pet by status
    Given url 'https://petstore.swagger.io/v2/pet/'
    And path 'findByStatus'
    And param status = <petStatus>
    When method get
    Then status 200
    Examples:
    | petStatus |
    |'available'|
    |'pending'  |
    |'sold'     |

  Scenario: Find pet by status
    Given url 'https://petstore.swagger.io/v2/pet/'
    And path 'findByStatus'
    And param status = 'available'
    When method get
    Then status 400

  Scenario: Delete a pet
    Given url https://petstore.swagger.io/v2/pet/1
    And path '{petId}'
    And param status = 'accept'
    When method delete
    Then status 200

  Scenario: Find pet by status
    Given url 'https://petstore.swagger.io/v2/pet/'
    And path 'findByStatus'
    And param status = 'pending'
    When method get
    Then status 200

  Scenario: Update an existing pet
    Given url 'https://petstore.swagger.io/v2/pet'
    And path 'pet'
    And param status = 'doggie'
    When method put
    Then status 405

  Scenario: Update an existing pet
    Given url 'https://petstore.swagger.io/v2/pet'
    And path 'pet'
    And param status = 'responses'
    When method put
    Then status 405




