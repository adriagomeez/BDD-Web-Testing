Feature: Help page
  As a developer
  I want to know if the help page behaves correctly

  Scenario: Help searcher
    Given I go to "https://www.jdsports.es/pages/faqs/" page
    When I write the "pedido incompleto" on "faqInput"
    Then I should see a "25 resultados encontrados" text

  Scenario: List of FAQ
    Given I go to "https://www.jdsports.es/pages/faqs/" page
    When I click on "¿Dónde está mi pedido?" link
    Then I should see a "Envío a domicilio estándar:" text

  Scenario: Send a message
    Given I go to "https://www.jdsports.es/customer-service/contact/" page
    When I write the "test" on "name"
    And I write the "test@gmail.com" on "email"
    And I select "¿Dónde está mi pedido?" on "subject"
    And I write the "description" on "description"
    And I click on "Enviar" button
    Then I should see a "Tu mensaje ha sido enviado a nuestro equipo de Atención al Cliente" text