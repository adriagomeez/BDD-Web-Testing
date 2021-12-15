Feature: Edit account
  As a developer
  I want to know if the edit account behaves correctly

  Scenario: Edit account correctly
    Given I go to "https://www.jdsports.es/myaccount/login/" page
    When I write the "prueba112@gmail.com" on "username"
    And I write the "PruebaScenario2" on "password"
    And I click on "Iniciar sesión" button
    Then I should see a "Adria Gomez" text
    When I click on "Editar" link
    Then I should see a "Información de contacto" text
    When I write the "prueba110@gmail.com" on "email"
    And I click on "Guardar" button
    Then I should see a "Tu cuenta se ha actualizado" text
    When I go to "https://www.jdsports.es/myaccount/info/" page
    And I write the "prueba112@gmail.com" on "email"
    And I click on "Guardar" button
    Then I should see a "Tu cuenta se ha actualizado" text

  Scenario: Edit account incorrectly
    Given I go to "https://www.jdsports.es/myaccount/dashboard/" page
    When I click on "Editar" link
    Then I should see a "Información de contacto" text
    When I write the "testgmail.com" on "email"
    Then I should see a "Debes indicar tu e-mail en el formato correcto." text

  Scenario: Add home address
    Given I go to "https://www.jdsports.es/myaccount/dashboard/" page
    When I click on "Mis direcciones" link
    Then I should see a "Mis direcciones" text
    When I click on "Añadir nueva dirección" link
    Then I should see a "Añadir direcciones" text
    When I click on "Si no encuentras tu dirección, HAZ CLICK AQUÍ para introducirla manualmente" button
    And I write the "654321654" on "phone"
    And I write the "Autonoma" on "address1"
    And I write the "Sabadell" on "town"
    And I write the "08200" on "postcode"
    And I click on "Guardar" button
    Then I should see a "Se ha actualizado tu dirección" text

  Scenario: Delete home address
    Given I go to "https://www.jdsports.es/myaccount/dashboard/" page
    When I click on "Mis direcciones" link
    Then I should see a "Mis direcciones" text
    When I click on "Borrar" link
    Then I should see a "Se ha eliminado una dirección" text