Feature: Dropdown basket
  As a developer
  I want to know if the dropdown basket behaves correctly

  Scenario: dropdown the basket
    Given I go to "https://www.jdsports.es/product/blanco-money-clothing-camiseta-sig-block/16253467_jdsportses/" page
    When I click on "XL" button
    And I click on "Añadir a la cesta" button
    Then I should see a "Mi cesta de compra" text
    And I click on "Lo nuevo" link
    And I stay on "bskt" item
    Then I should see a "Referencia de cesta de compra:" text

  Scenario: Modify quantity of a product
    Given I go to "https://www.jdsports.es/" page
    When I stay on "bskt" item
    Then I should see a "Referencia de cesta de compra:" text
    When I click on "itemQuanMore" link by css selector
    Then I should see a "2" quantity on "cartNumber"
    When I click on "itemQuanLess" link by css selector
    Then I should see a "1" quantity on "cartNumber"

  Scenario: Delete product of the basket
    Given I go to "https://www.jdsports.es/" page
    When I stay on "bskt" item
    And I click on "Eliminar" link
    Then I should see a "La cesta está vacía" text

