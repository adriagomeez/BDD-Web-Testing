Feature: Search with filters
  As a developer
  I want to know if the filters behaves correctly

  Scenario: Size filter
    Given I go to "https://www.jdsports.es/hombre/ropa-de-hombre/latest/" page
    When I click on "S" filter list
    Then I should see a "Talla: S" text

  Scenario: Color filter
    Given I go to "https://www.jdsports.es/hombre/ropa-de-hombre/latest/" page
    When I click on "Azul" filter list
    Then I should see a "Hombre - Azul Ropa de hombre" text

  Scenario: Category filter
    Given I go to "https://www.jdsports.es/hombre/ropa-de-hombre/latest/" page
    When I click on "Chaquetas" filter list
    Then I should see a "Chaquetas de hombre y abrigos" text