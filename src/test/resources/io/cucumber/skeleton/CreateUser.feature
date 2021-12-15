Feature: Create new account
  As a developer
  I want to know if the create new account behaves correctly

  Scenario: Correct registration
    Given I go to "https://www.jdsports.es/myaccount/register/" page
    When I write the "Adria" on "firstName"
    And I write the "Gomez" on "lastName"
    And I write the "prueba131@gmail.com" on "username"
    And I write the "777666555" on "phone"
    And I write the "PruebaScenario2" on "password"
    And I write the "PruebaScenario2" on "confirmPassword"
    And I click on "Si no encuentras tu dirección, HAZ CLICK AQUÍ para introducirla manualmente" button
    And I write the "08200" on "postcode"
    And I write the "Autonoma" on "address1"
    And I write the "Sabadell" on "town"
    And I click on "Registrar" button
    Then I should see a "Se ha creado tu cuenta" text

  Scenario: Logout
    Given I go to "https://www.jdsports.es/myaccount/dashboard/" page
    When I click on "Cerrar sesión" link
    Then I should see a "Iniciar sesión" text

  Scenario: Incorrect information
    Given I go to "https://www.jdsports.es/myaccount/register/" page
    When I write the "Adria" on "firstName"
    And I write the "Gomez" on "lastName"
    And I write the "pruebagmail.com" on "username"
    Then I should see a "Debes indicar tu e-mail en el formato correcto." text
    When I write the "prueba@gmail.com" on "username"
    And I write the "777" on "phone"
    Then I should see a "Por motivos de envío, proporciona tu número de teléfono móvil (entre 8 y 12 caracteres). Solo puede contener números y el símbolo +." text
    When I write the "777666555" on "phone"
    And I write the "p" on "password"
    And I write the "p" on "confirmPassword"
    Then I should see a "La contraseña debe tener al menos 8 caracteres." text
    When I click on "Registrar" button
    Then I should see a "Formulario incorrecto." text

  Scenario: Registered user
    Given I go to "https://www.jdsports.es/myaccount/register/" page
    When I write the "Adria" on "firstName"
    And I write the "Gomez" on "lastName"
    And I write the "prueba@gmail.com" on "username"
    And I write the "777666555" on "phone"
    And I write the "PruebaScenario2" on "password"
    And I write the "PruebaScenario2" on "confirmPassword"
    And I click on "Si no encuentras tu dirección, HAZ CLICK AQUÍ para introducirla manualmente" button
    And I write the "08200" on "postcode"
    And I write the "Autonoma" on "address1"
    And I write the "Sabadell" on "town"
    And I click on "Registrar" button
    Then I should see a "No hemos podido crear tu cuenta porque ya existe una cuanta asociada a esa dirección de e-mail" text