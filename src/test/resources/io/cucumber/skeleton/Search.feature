Feature: Searcher
  As a developer
  I want to know if the searcher behaves correctly

  Scenario: Cloth search
    Given I go to "https://www.jdsports.es/" page
    When I write the "camiseta" on "srchInput"
    And I press enter on "srchInput"
    Then I should see a "camiseta" text
    And I should see a "adidas Camiseta City Elevated" button

  Scenario: Brand search
    Given I go to "https://www.jdsports.es/" page
    When I write the "adidas" on "srchInput"
    And I press enter on "srchInput"
    Then I should see a "Marca: adidas" text
    When I write the "guess" on "srchInput"
    And I press enter on "srchInput"
    Then I should see a "Marca: GUESS" text

  Scenario: Incorrect search
    Given I go to "https://www.jdsports.es/" page
    When I write the "cantimplora" on "srchInput"
    And I press enter on "srchInput"
    Then I should see a "Lo sentimos, no hemos encontrardo ningún producto con ese criterio de búsqueda." text
