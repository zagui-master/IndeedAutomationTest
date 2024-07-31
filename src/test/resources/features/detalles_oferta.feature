Feature: Ver detalles de una oferta de empleo

  Scenario Outline: Ver detalles de una oferta de empleo
    Given El usuario está en la página de inicio de Indeed
    When El usuario busca <profesion> en la barra de búsqueda
    And El usuario selecciona <ciudad> como ubicación
    And El usuario hace clic en el botón de búsqueda
    And El usuario hace clic en la primera oferta de empleo en los resultados
    Then Se deben mostrar los detalles de la oferta de empleo seleccionada
    And La oferta de empleo debe mostrar información como el título, la empresa, la ubicación y la descripción
    Examples:
      | profesion              | ciudad |
      | Arquitecto de Software | Bogota |