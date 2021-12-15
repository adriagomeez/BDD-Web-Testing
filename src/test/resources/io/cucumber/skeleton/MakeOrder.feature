Feature: Make order
  As a developer
  I want to know if the make order behaves correctly

  Scenario: Finish order as a guest, home delivery
    Given I go to "https://www.jdsports.es/product/negro-new-balance-5740/16254260_jdsportses/" page
    When I click on "42" button
    And I click on "Añadir a la cesta" button
    Then I should see a "Mi cesta de compra" text
    And I should see a "New Balance 57/40" text
    When I go to "https://www.jdsports.es/checkout/login/" page
    Then I should see a "Finalizar pedido como invitado" text
    When I write the "test@gmail.com" on "guestEmail"
    And I click on button with "checkoutGuest" id
    Then I should see a "Envío y opciones de recogida" text
    And I should see a "Localización de envío" text
    And I should see a "Selecciona un sistema de envío" text
    When I click on "Envío a domicilio estándar" text
    And I click on "Envío a domicilio estándar" text
    Then I should see a "Añadir dirección de envío" text
    And I should see a "Usaremos esta información para confirmar tu pedido" text
    When I write the "Adria" on "firstName"
    And I write the "Gomez" on "lastName"
    And I write the "777666555" on "phone"
    And I click on "Si no encuentras tu dirección, HAZ CLICK AQUÍ para introducirla manualmente" button
    And I write the "08200" on "postcodeLook"
    And I write the "Autonoma" on "address1"
    And I write the "Sabadell" on "town"
    And I click on "Continuar" button
    Then I should see a "Factura y revisión" text

  Scenario: Finish order as a guest, store pickup
    Given I go to "https://www.jdsports.es/cart/" page
    When I go to "https://www.jdsports.es/checkout/login/" page
    Then I should see a "Finalizar pedido como invitado" text
    When I write the "test@gmail.com" on "guestEmail"
    And I click on button with "checkoutGuest" id
    Then I should see a "Envío y opciones de recogida" text
    And I should see a "Localización de envío" text
    And I should see a "Selecciona un sistema de envío" text
    When I click on "Envío a domicilio estándar" text
    Then I should see a "Recogida en tienda" text
    When I write the "Barcelona" on "postcode"
    And I press enter on "postcode"
    Then I should see a "Barcelona - Calle Portaferrissa" text
    And I should see a "Información" text
    When I write the "Adria" on "firstName"
    And I write the "Gomez" on "lastName"
    And I write the "777666555" on "phone"
    And I click on "Continuar" button
    Then I should see a "Factura y revisión" text

  Scenario: Finish order as user, shop pickup
    Given I go to "https://www.jdsports.es/cart/" page
    When I go to "https://www.jdsports.es/checkout/login/" page
    Then I should see a "Finalizar pedido como invitado" text
    When I write the "prueba114@gmail.com" on "email"
    And I write the "PruebaScenario2" on "passwrd"
    And I click on button with "checkoutRegistered" id
#    Then I should see a "Envío y opciones de recogida" text
#    And I should see a "Localización de envío" text
#    And I should see a "Selecciona un sistema de envío" text
#    When I click on "Envío a domicilio estándar" text
#    Then I should see a "Recogida en tienda" text
#    When I write the "Barcelona" on "postcode"
#    And I press enter on "postcode"
#    Then I should see a "Barcelona - Calle Portaferrissa" text
#    And I should see a "Información" text
#    When I write the "Adria" on "firstName"
#    And I write the "Gomez" on "lastName"
#    And I write the "777666555" on "phone"
#    And I click on "Continuar" button
    Then I should see a "Factura y revisión" text
    When I go to "https://www.jdsports.es/" page
    When I click on "Mi cuenta" link
    Then I should see a "Adria Gomez" text
    When I click on "Cerrar sesión" link
    Then I should see a "Iniciar sesión" text