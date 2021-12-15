Feature: Basket performance
  As a developer
  I want to know if the basket behaves correctly

  Scenario: Add product to the basket
    Given I go to "https://www.jdsports.es/product/blanco-money-clothing-camiseta-sig-block/16253467_jdsportses/" page
    When I click on "XL" button
    And I click on "Añadir a la cesta" button
    Then I should see a "Mi cesta de compra" text
    And I should see a "Money Clothing camiseta Sig Block" text

  Scenario: Increase quantity of a product
    Given I go to "https://www.jdsports.es/cart/" page
    Then I should see a "Mi cesta de compra" text
    When I click on "cartPageItemQuanMore" link by css selector
    Then I should see a "2" quantity on "itemQuantity"

  Scenario: Decrease quantity of a product
    Given I go to "https://www.jdsports.es/cart/" page
    Then I should see a "Mi cesta de compra" text
    When I click on "cartPageItemQuanLess" link by css selector
    Then I should see a "1" quantity on "itemQuantity"

#  Scenario: Delete product of the basket
#    Given I go to "https://www.jdsports.es/cart/" page
#    When I click on "Eliminar" link
#    Then I should see a "¡Tu cesta de compra está vacía!" text
