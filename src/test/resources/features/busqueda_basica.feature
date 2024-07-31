Feature: Búsqueda básica de ofertas de empleo en Indeed

  Background:
    Given El usuario está en la página de inicio de Indeed

  Scenario Outline: Buscar ofertas sin filtros
    When El usuario busca <profesion> en la barra de búsqueda
    And El usuario selecciona <ciudad> como ubicación
    And El usuario hace clic en el botón de búsqueda
    Then Se deben mostrar resultados relacionados con <profesion> en <ciudad>
    Examples:
      | profesion                 | ciudad |
      | Desarrollador de software | Bogota |

  Scenario Outline: Buscar ofertas en diferentes ubicaciones
    When El usuario busca <profesion> en la barra de búsqueda
    And El usuario selecciona <ciudad> como ubicación
    And El usuario hace clic en el botón de búsqueda
    Then Se deben mostrar resultados relacionados con <profesion> en <ciudad>
    When El usuario cambia la ubicación a <ciudad alterna>
    And El usuario hace clic en el botón de búsqueda
    Then Se deben mostrar resultados relacionados con <profesion> en <ciudad alterna>
    Examples:
      | profesion          | ciudad | ciudad alterna |
      | Ingeniero de datos | Bogota | Medellin       |
