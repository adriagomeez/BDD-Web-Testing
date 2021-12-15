Feature: Favourites
  As a developer
  I want to know if the basket behaves correctly

  Scenario: Add product to favourites
    Given I go to "https://www.jdsports.es/product/negro-puma-jada-junior/16256084_jdsportses/" page
    When I click on "38" button
    And I click on "Guardar para más tarde" link
    And I click on "Añadir a la lista de deseos" link
    Then I should see a "Guardado en Lista de deseos" text
    When I click on "Lista de deseos" link
    Then I should see a "Mi lista de deseos" text
    And I should see a "Puma Jada Junior" text

  Scenario: Delete product of favourites
    Given I go to "https://www.jdsports.es/wishlists/" page
    When I click on "removeFromWishlist" link by css selector
    Then I should see a "No has añadido nada a tu lista de deseos" text

  Scenario: quick buy
    Given I go to "https://www.jdsports.es/product/negro-puma-jada-junior/16256084_jdsportses/" page
    When I click on "38" button
    And I click on "Guardar para más tarde" link
    And I click on "Añadir a la lista de deseos" link
    Then I should see a "Guardado en Lista de deseos" text
    And I click on "Lista de deseos" link
    Then I should see a "Puma Jada Junior" text
    When I click on "Compra rápida" button
    And I click on "Añadir a la cesta" button
    Then I should see a "Mi cesta de compra" text
    And I should see a "Puma Jada Junior" text