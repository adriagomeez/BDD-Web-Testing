Feature: Login account
  As a developer
  I want to know if the login behaves correctly

  Scenario: Incorrect login
    Given I go to "https://www.jdsports.es/myaccount/login/" page
    When I write the "username" on "username"
    And I write the "password" on "password"
    And I click on "Iniciar sesión" button
    Then I should see a "Lo sentimos. Parece que ha habido un problema." text

  Scenario: Forgotten password
    Given I go to "https://www.jdsports.es/myaccount/login/" page
    When I click on "¿Has olvidado tu contraseña?" link
    Then I should see a "Cambiar contraseña" text
    And I write the "test@gmail.com" on "email"
    And I click on "Cambiar contraseña" button
    Then I should see a "¡E-mail enviado!" text

  Scenario: Correct login
    Given I go to "https://www.jdsports.es/myaccount/login/" page
    When I write the "prueba112@gmail.com" on "username"
    And I write the "PruebaScenario2" on "password"
    And I click on "Iniciar sesión" button
    Then I should see a "Adria Gomez" text

  Scenario: Logout
    Given I go to "https://www.jdsports.es/myaccount/dashboard/" page
    When I click on "Cerrar sesión" link
    Then I should see a "Iniciar sesión" text