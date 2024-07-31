Feature: Manejo de errores y entradas inválidas en la búsqueda

  Scenario Outline: Manejar errores al buscar
    Given El usuario está en la página de inicio de Indeed
    When El usuario realiza una búsqueda con una palabra clave inválida <palabra>
    And El usuario selecciona <ciudad> como ubicación
    And El usuario hace clic en el botón de búsqueda
    Then Se debe mostrar un mensaje indicando que no se encontraron resultados o que la búsqueda no es válida
    Examples:
      | palabra       | ciudad |
      | *****%&/()(%$ | Bogota |
